package delivery.al.toque

class AppUser extends Entity {

	//EmailData eMail
	//MobilePhoneData mobilePhone
	String nationality
	String birthDate
	String language
	UserNames names
	
	String parentId
	String role
	
	static embedded = ['eMail', 'mobilePhone','names']
	
    static constraints = {
		eMail(blank:true,nullable:true)
		mobilePhone(blank:true,nullable:true)
		nationality(blank:true,nullable:true)
		birthDate(blank:true,nullable:true)
		language(blank:true,nullable:true)
		names(blank:true,nullable:true)
		parentId(blank:true,nullable:true)
		role(blank:true,nullable:true)
    }
	

}
