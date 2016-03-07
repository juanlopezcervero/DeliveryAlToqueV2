package delivery.al.toque

import org.springframework.web.multipart.MultipartFile

class FileUtils {

	def static saveImage(String name, String path, MultipartFile imagen) {
		if (!imagen?.empty) {
			def type = imagen.contentType
			String[] splitType = type.split("/")
			def imageDir = new File("${path}")
			imageDir.mkdirs()
			def imageFile = new File(imageDir, "${name}.png")
			//SAVE IMAGE
			imagen.transferTo(imageFile)
		}
	}
	
	def static saveFile(String name, String path, MultipartFile fileData) {
		if (!fileData?.empty) {
			def type = fileData.contentType
			String[] splitType = type.split("/")
			def fileDir = new File("${path}")
			fileDir.mkdirs()
			def file = new File(fileDir, "${name}")
			//SAVE IMAGE
			fileData.transferTo(file)
		}
	}
}
