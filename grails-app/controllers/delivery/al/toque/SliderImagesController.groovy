package delivery.al.toque

class SliderImagesController {

	def showImage(String imagePath) {
		
		def webRootDir = grailsApplication.config.imagesDir
		
		def image = new File(webRootDir, "/slider/${imagePath}")
		
		response.outputStream << image.getBytes()
	}
	
}
