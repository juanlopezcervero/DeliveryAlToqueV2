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
	
	String userId

	String brand
	
	String model
	
	String operativeSystem
	
	String operativeSystemVersion
	
	//TO REMOVE
	String platform
	String appVersion
	
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
		brand(nullable: true, blank: true)
		model(nullable: true, blank: true)
		operativeSystem(nullable: true, blank: true)
		operativeSystemVersion(nullable: true, blank: true)
    }
}
