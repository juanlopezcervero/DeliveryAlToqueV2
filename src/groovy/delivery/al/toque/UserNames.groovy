package delivery.al.toque

class UserNames {

	String first
	String last
	
	static constraints = {
		first(blank:true,nullable:true)
		last(blank:true,nullable:true)
	}
	
}
