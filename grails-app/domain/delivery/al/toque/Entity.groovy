package delivery.al.toque

import java.util.Date;

abstract class Entity {

	String uniqueId
	
	Date dateCreated
	Date lastUpdated
	
	Boolean deleted
	
	static mapping = {
		tablePerHierarchy false
	}
	
    static constraints = {
		uniqueId(blank:true, nullable:true)
		deleted(blank:true, nullable:true)
    }
	
}
