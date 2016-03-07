package delivery.al.toque

class CreditsData {
	
	String currency
	String balance
	String status	
	
	static constraints = {
		currency(blank:true,nullable:true)
		balance(blank:true,nullable:true)
		status(blank:true,nullable:true)
	}
	
}
