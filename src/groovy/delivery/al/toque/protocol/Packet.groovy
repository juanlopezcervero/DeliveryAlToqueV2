package delivery.al.toque.protocol

import delivery.al.toque.LocationData

class Packet {

	String id
	String token
	String timeStamp
	String language
	
	LastReceivedPacketInfo lastReceivedPacket
	
	String securityTerms
	
	LocationData location
	
	PeerData peer
	
	Installation installation
	
	SyncData sync
	
	
	List<EntityDTO> entities  
	
}
