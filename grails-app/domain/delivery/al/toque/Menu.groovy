package delivery.al.toque

class Menu extends Entity {

	String parentId
	
	String currency
	String decimal
	
	String language
	
	String content
	
    static constraints = {
		currency(nullable: true, blank: true)
		decimal(nullable: true, blank: true)
		language(nullable: true, blank: true)
		content(nullable: true, blank: true)
    }
	
	static mapping = {
		content sqlType: 'nvarchar(MAX)'
	}
}
