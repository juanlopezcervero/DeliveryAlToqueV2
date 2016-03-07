package delivery.al.toque.protocol

abstract class EntityDTO {

	String id
	String uniqueId
	String version
	String timeStamp
	Boolean deleted
	String status
	
	ErrorData error
	
}
