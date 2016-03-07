package delivery.al.toque

class Enum extends Entity {

	String name
	String countryCode
	String language
	String content
	
	
    static constraints = {
		name(nullable: true, blank: true)
		countryCode(nullable: true, blank: true)
		language(nullable: true, blank: true)
		content(nullable: true, blank: true)
    }
	
	static mapping = {
		content sqlType: 'nvarchar(MAX)'
	}
}
