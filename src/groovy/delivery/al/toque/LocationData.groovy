package delivery.al.toque

class LocationData {
	
	String coordinates
	String provider
	String accuracy

	static constraints = {
		coordinates(blank:true,nullable:true)
		provider(blank:true,nullable:true)
		accuracy(blank:true,nullable:true)
	}
	
}
