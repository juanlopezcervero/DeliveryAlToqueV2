package delivery.al.toque.protocol.entities

import delivery.al.toque.EmailData;
import delivery.al.toque.MobilePhoneData;
import delivery.al.toque.UserNames;
import delivery.al.toque.protocol.EntityDTO;

class AppUserDTO extends EntityDTO {
	
	EmailData eMail
	MobilePhoneData mobilePhone
	String nationality
	String birthDate
	String language
	UserNames names
	
	String parentId
	String role
	

	
}
