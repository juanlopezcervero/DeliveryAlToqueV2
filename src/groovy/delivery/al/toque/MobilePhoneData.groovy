package delivery.al.toque

class MobilePhoneData {

	String verified
	String number
	String operator
	
	static constraints = {
		verified(blank:true,nullable:true)
		number(blank:true,nullable:true)
		operator(blank:true,nullable:true)
	}
	
}
