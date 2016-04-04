package delivery.al.toque

class VerifyLink extends Entity {
	
	String installationId
	String verifySource
	
	String eMail
	String mobilePhone
	
	String link

    static constraints = {
		installationId(blank:true,nullable:true)
		verifySource(blank:true,nullable:true)
		eMail(blank:true,nullable:true)
		mobilePhone(blank:true,nullable:true)
		link(blank: true, nullable: false)
    }
	
}
