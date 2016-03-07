package delivery.al.toque

import org.springframework.web.multipart.MultipartFile

class ImagesController {
	
	def index(String imagePath) {
		
		def webRootDir = grailsApplication.config.imagesDir
		
		def image = new File(webRootDir, "/${imagePath}")
		
		response.outputStream << image.getBytes()
	}
	
	def uploadImage() {
		
		switch (request.method) {
			case 'GET':
				ImageUpload imageUploadInstance = new ImageUpload()
				render view: 'uploadImage', model: [imageUploadInstance: imageUploadInstance]
				break
			case 'POST':
				def imageUploadInstance = new ImageUpload(params)
				def String merchantId = imageUploadInstance.merchantId
				def String imageType = imageUploadInstance.imageType
				def String height = imageUploadInstance.height
				def String width = imageUploadInstance.width
				
				def MultipartFile imageFile = request.getFile("imageFile")
				def imagesDir = grailsApplication.config.imagesDir
				FileUtils.saveImage("${imageType}${width}x${height}", "${imagesDir}/merchant/${merchantId}", imageFile)
				
				flash.message = message(code: 'default.created.message', args: [message(code: 'image.label', default: 'Imagen'), "${merchantId} -> ${imageType}${width}x${height}"])
				redirect action: 'uploadImage'
				break
			return
		}
	}
	
}
