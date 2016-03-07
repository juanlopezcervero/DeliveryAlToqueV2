package delivery.al.toque

import org.springframework.web.multipart.MultipartFile;

public class ImageUpload {
	MultipartFile imageFile
	String merchantId
	String imageType
	String height
	String width
	
	String action
	String controller
}