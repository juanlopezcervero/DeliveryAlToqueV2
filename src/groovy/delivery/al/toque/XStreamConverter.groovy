package delivery.al.toque

import com.thoughtworks.xstream.XStream
import com.thoughtworks.xstream.io.xml.StaxDriver

import delivery.al.toque.protocol.AppClass
import delivery.al.toque.protocol.CultureData
import delivery.al.toque.protocol.LastReceivedPacketInfo
import delivery.al.toque.protocol.Packet
import delivery.al.toque.protocol.PeerData
import delivery.al.toque.protocol.ProtocolFailure
import delivery.al.toque.protocol.PulseData
import delivery.al.toque.protocol.SyncData
import delivery.al.toque.protocol.entities.AddressDTO
import delivery.al.toque.protocol.entities.AppUserDTO
import delivery.al.toque.protocol.entities.DeliveryOrderDTO
import delivery.al.toque.protocol.entities.EnumDTO
import delivery.al.toque.protocol.entities.EstablishmentDTO
import delivery.al.toque.protocol.entities.InstallationDTO
import delivery.al.toque.protocol.entities.MenuDTO
import delivery.al.toque.protocol.entities.MenuLinkDTO
import delivery.al.toque.protocol.entities.MerchantDTO
import delivery.al.toque.protocol.entities.VerifyLinkDTO
import delivery.al.toque.protocol.entities.extended.BusinessIdDTO
import delivery.al.toque.protocol.entities.extended.ImageDTO
import delivery.al.toque.protocol.entities.extended.MerchantUserDTO

class XStreamConverter {
	
	private static XStreamConverter instance

	private XStream xstream = new XStream(new StaxDriver())
	
	
	private XStreamConverter() {
		//Protocol Mapping
		xstream.alias("packet", Packet.class)
		xstream.addImplicitCollection(Packet.class, "entities")
		xstream.alias("lastReceivedPacket", LastReceivedPacketInfo.class)
		xstream.alias("location", LocationData.class)
		xstream.alias("peer", PeerData.class)
		xstream.alias("installationData", delivery.al.toque.protocol.Installation.class)
		xstream.alias("class", AppClass.class)
		xstream.alias("culture",CultureData.class)
		xstream.alias("pulse",PulseData.class)
		xstream.alias("sync", SyncData.class)
		xstream.addImplicitCollection(SyncData.class,"entities")
		
		//Entities Mapping
		xstream.alias("address", AddressDTO.class)
		xstream.alias("user", AppUserDTO.class)
		xstream.alias("menu", MenuDTO.class)
		xstream.alias("merchant", MerchantDTO.class)
		xstream.alias("image", ImageDTO.class)
		xstream.alias("operator", MerchantUserDTO.class)
		xstream.alias("businessId", BusinessIdDTO.class)
		xstream.alias("establishment", EstablishmentDTO.class)
		xstream.alias("enum", EnumDTO.class)		
		xstream.alias("installation", InstallationDTO.class)
		xstream.aliasField("class", InstallationDTO.class, "clazz")
		xstream.aliasField("count", InstallationDTO.class, "installCount")
		xstream.alias("order", DeliveryOrderDTO.class)
		xstream.alias("menuLink", MenuLinkDTO.class)
		xstream.alias("verifyLink", VerifyLinkDTO.class)
		
		xstream.alias("protocolFailure", ProtocolFailure.class)
	}
	
	public static XStreamConverter getInstance() {
		if (instance == null) {
			instance = new XStreamConverter()
		}
		return instance
	}
	
	public String toXML(Object o) {
		return xstream.toXML(o)
	}
	
	
	public Object fromXML(String xml) {
		return xstream.fromXML(xml)
	}
	
}
