package delivery.al.toque.protocol.entities

import delivery.al.toque.CreditsData
import delivery.al.toque.EmailData;
import delivery.al.toque.LocationData;
import delivery.al.toque.MobilePhoneData;
import delivery.al.toque.protocol.AppClass;
import delivery.al.toque.protocol.CultureData;
import delivery.al.toque.protocol.EntityDTO
import delivery.al.toque.protocol.PulseData;
import delivery.al.toque.protocol.entities.extended.BusinessIdDTO
import delivery.al.toque.protocol.entities.extended.ImageDTO
import delivery.al.toque.protocol.entities.extended.MerchantUserDTO

class InstallationDTO extends EntityDTO {

	AppClass clazz
	
	String installCount
	
	LocationData location
	
	CultureData culture
	
	PulseData pulse
	
	EmailData eMail
	MobilePhoneData mobilePhone
	
	String userId

	String platform
	
	String appVersion
	
}
