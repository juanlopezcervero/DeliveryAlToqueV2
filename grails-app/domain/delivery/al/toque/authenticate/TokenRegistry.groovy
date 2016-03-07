package delivery.al.toque.authenticate

import java.util.Date;

class TokenRegistry {

	String token
	String sessionId
	Boolean verified
	String installationUniqueId
	
	Date dateCreated
	Date lastUpdated
	
	static constraints = {
		token(blank:true,nullable:true)
		sessionId(blank:true,nullable:true)
		verified(blank:true,nullable:true)
		installationUniqueId(blank:true,nullable:true)
	}
	
}
