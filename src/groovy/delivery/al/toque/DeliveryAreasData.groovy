package delivery.al.toque

class DeliveryAreasData {

	String type
	String detail
	
	static constraints = {
		type(blank:true,nullable:true)
		detail(blank:true,nullable:true)
	}
	
	static mapping = {
		detail sqlType: 'nvarchar(MAX)'
	}
	
	
}
