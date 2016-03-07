package delivery.al.toque

import delivery.al.toque.protocol.AppClass
import delivery.al.toque.protocol.CultureData
import delivery.al.toque.protocol.PulseData

class Installation extends Entity {

	AppClass clazz
	
	String installCount
	
	LocationData location
	
	CultureData culture
	
	PulseData pulse
	
	EmailData eMail
	MobilePhoneData mobilePhone
	
	String platform
	
	String appVersion
	
	String userId
	
	static embedded = ['clazz', 'location','culture','pulse','eMail','mobilePhone']
	
    static constraints = {
		clazz(nullable: true, blank: true)
		installCount(nullable: true, blank: true)
		location(nullable: true, blank: true)
		culture(nullable: true, blank: true)
		pulse(nullable: true, blank: true)
		eMail(nullable: true, blank: true)
		mobilePhone(nullable: true, blank: true)
		userId(nullable: true, blank: true)
		platform(nullable: true, blank: true)
		appVersion(nullable: true, blank: true)
    }
}
