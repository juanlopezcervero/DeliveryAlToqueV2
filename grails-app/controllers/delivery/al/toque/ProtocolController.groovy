package delivery.al.toque

import groovy.util.slurpersupport.NodeChild
import groovy.xml.XmlUtil

import java.text.SimpleDateFormat

import javassist.bytecode.stackmap.BasicBlock.Catch;

import org.apache.commons.lang.RandomStringUtils;

import delivery.al.toque.protocol.EntityDTO;
import delivery.al.toque.protocol.ErrorData;
import delivery.al.toque.protocol.LastReceivedPacketInfo
import delivery.al.toque.protocol.Packet
import delivery.al.toque.protocol.ProtocolFailure;

class ProtocolController {
	
	def delegatorService
	
	static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ")
	static SimpleDateFormat installationIdSdf = new SimpleDateFormat("yyyyMMddHHmmssSSS")
	
	static {
		sdf.setTimeZone(TimeZone.getTimeZone("UTC"))
	}

	
    def index() {
		NodeChild xmlData = request.XML
		String packetXml = XmlUtil.serialize(xmlData)
		Packet packet = XStreamConverter.getInstance().fromXML(packetXml)
		if (validatePacket(packet)) {
			
			Packet responsePacket = createResponsePacket(packet)

			try {
				
				packet.sync?.entities?.each { entityDto ->
					List<EntityDTO> responseEntities = delegatorService.process(entityDto)
					if (!responsePacket.entities) {
						responsePacket.entities = new ArrayList<EntityDTO>()
					}
					responsePacket.entities.addAll(responseEntities)				
				}
				
			} catch (Exception e) {
				//Protocol failure
				ProtocolFailure failure = new ProtocolFailure()
				ErrorData error = new ErrorData()
				error.code = "999"
				error.detail = e.getMessage()
				failure.setError(error)
				if (!responsePacket.entities) {
					responsePacket.entities = new ArrayList<EntityDTO>()
				}
				responsePacket.entities.add(failure);
			}
			
			render XStreamConverter.getInstance().toXML(responsePacket)
			return
		} else {
			session.invalidate()
			render ""
		}
		return
	}
	
	private Packet createResponsePacket(Packet receivedPacket) {
		Packet packet = new Packet()
		packet.setTimeStamp(sdf.format(new Date()))
		packet.setId(receivedPacket.id)
		packet.setToken(session["SERVER_TOKEN"])
		packet.setLastReceivedPacket(new LastReceivedPacketInfo(token: session["CLIENT_TOKEN"], timeStamp: receivedPacket.timeStamp))
		packet.setSecurityTerms(receivedPacket.securityTerms)
		packet.setInstallation(receivedPacket.installation)
		if (packet.getInstallation() != null && packet.getInstallation().getId() == null) {
			//packet.getInstallation().setId(installationIdSdf.format(new Date()) + RandomStringUtils.random(8, "0123456789ABCDEF"))
		}
		packet.setPeer(receivedPacket.peer)
		packet.setLocation(receivedPacket.location)
		packet.setLanguage(receivedPacket.language)
		//packet.setSync(receivedPacket.sync)
		return packet
	}
	
	private Boolean validatePacket(Packet packet) {
		String lastPacketId = session["LAST_PACKET_ID"]
		String serverToken = session["SERVER_TOKEN"]
		String lastReceivedToken = session["CLIENT_TOKEN"]
		
		
		if ((lastPacketId != null && packet?.id != null) && (lastPacketId == packet.id)) {
			if (packet.token == lastReceivedToken) {
				return Boolean.TRUE
			} else {
				if (packet?.id == null)
					return Boolean.FALSE
				else if (lastPacketId != null && lastPacketId > packet.id)
					return Boolean.FALSE
			}
		}
		
		if (serverToken != null) {
			if (serverToken != packet.lastReceivedPacket?.token) {
				return Boolean.FALSE
			}
		}
		
		session["CLIENT_TOKEN"] = packet.token
		session["SERVER_TOKEN"] = RandomStringUtils.random(16, "0123456789ABCDEF")
		session["LAST_PACKET_ID"] = packet.id
		
		return Boolean.TRUE
		
	}
}
