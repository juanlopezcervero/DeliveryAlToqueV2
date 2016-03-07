package delivery.al.toque

class DeliveryOrder extends Entity {

	String content
	
    static constraints = {
		content(nullable: true, blank: true)
	}
	
	static mapping = {
		content sqlType: 'nvarchar(MAX)'
	}
}
