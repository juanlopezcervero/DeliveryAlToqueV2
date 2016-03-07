package delivery.al.toque.protocol

class AppClass {

	String name
	String version
	
	static constraints = {
		name(blank:true,nullable:true)
		version(blank:true,nullable:true)
	}
	
}
