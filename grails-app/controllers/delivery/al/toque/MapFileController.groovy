package delivery.al.toque

class MapFileController {

	def htmlFile() {
		
		
		def map = MapFileController.class.getResourceAsStream("/map.html")
		
		
		response.outputStream << map
	}
	
}
