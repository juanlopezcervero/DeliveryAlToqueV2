package delivery.al.toque

class Establishment extends Entity {

	String parentId
	
	LocationData location
	
	String state
	String city
	String postalCode
	String street
	
	String detail
	String name
	String hasTag
	String phone
	
	DeliveryAreasData deliveryAreas
	
	String openingTimes
	
	static embedded = ['deliveryAreas', 'location']
	
	static constraints = {
		location(nullable: true, blank: true)
		state(nullable: true, blank: true)
		city(nullable: true, blank: true)
		postalCode(nullable: true, blank: true)
		street(nullable: true, blank: true)
		detail(nullable: true, blank: true)
		name(nullable: true, blank: true)
		hasTag(nullable: true, blank: true)
		phone(nullable: true, blank: true)
		openingTimes(nullable: true, blank: true)
		deliveryAreas(nullable: true, blank: true)
    }
	
	static mapping = {
		openingTimes sqlType: 'nvarchar(MAX)'
	}
}
