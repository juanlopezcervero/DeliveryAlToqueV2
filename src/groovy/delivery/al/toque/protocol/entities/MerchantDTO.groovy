package delivery.al.toque.protocol.entities

import delivery.al.toque.CreditsData
import delivery.al.toque.protocol.EntityDTO
import delivery.al.toque.protocol.entities.extended.BusinessIdDTO
import delivery.al.toque.protocol.entities.extended.ImageDTO
import delivery.al.toque.protocol.entities.extended.MerchantUserDTO

class MerchantDTO extends EntityDTO {

	String name
	CreditsData credits

	String eMail
	String category
	String country
	String phone
	
	List<ImageDTO> images
	List<BusinessIdDTO> businessIds

}
