package delivery.al.toque.protocol

class PulseData {
	
	String basal
	String anxious
	String wait
	String retries

	static constraints = {
		basal(blank:true,nullable:true)
		anxious(blank:true,nullable:true)
		wait(blank:true,nullable:true)
		retries(blank:true,nullable:true)
	}
	
}
