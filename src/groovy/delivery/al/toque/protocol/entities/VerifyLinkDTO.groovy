package delivery.al.toque.protocol.entities

import delivery.al.toque.protocol.EntityDTO

class VerifyLinkDTO extends EntityDTO {
	
	String installationId
	String verifySource
	
	String eMail
	String mobilePhone
}
