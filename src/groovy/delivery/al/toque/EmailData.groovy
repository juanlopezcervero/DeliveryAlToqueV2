package delivery.al.toque

class EmailData {
	
	String verified
	String address
	
	static constraints = {
		verified(blank:true,nullable:true)
		address(blank:true,nullable:true)
	}

}
