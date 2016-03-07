package delivery.al.toque.protocol

class CultureData {

	String country
	String language
	
	static constraints = {
		country(blank:true,nullable:true)
		language(blank:true,nullable:true)
	}
	
}
