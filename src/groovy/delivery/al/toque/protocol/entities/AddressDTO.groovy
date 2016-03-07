package delivery.al.toque.protocol.entities

import delivery.al.toque.LocationData;
import delivery.al.toque.protocol.EntityDTO;

class AddressDTO extends EntityDTO {
	
	String parentId
	
	String alias
	LocationData location
	String country
	String state
	String city
	String postalcode
	String street
	String detail


	
}
