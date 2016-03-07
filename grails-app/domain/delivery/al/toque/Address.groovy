package delivery.al.toque

class Address extends Entity {
	
	
	String parentId
	
	String alias
	LocationData location
	String country
	String state
	String city
	String postalcode
	String street
	String detail
	
	static embedded = ['location']
		
    static constraints = {
		parentId(blank:true,nullable:true)
		location(blank:true,nullable:true)
		country(blank:true,nullable:true)
		state(blank:true,nullable:true)
		city(blank:true,nullable:true)
		postalcode(blank:true,nullable:true)
		street(blank:true,nullable:true)
		detail(blank:true,nullable:true)
    }
	
	
}
