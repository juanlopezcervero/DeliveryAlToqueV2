package delivery.al.toque.extended

import delivery.al.toque.Merchant;

class Image {
	
	String type
	String url
	String width
	String height

	static belongsTo = [ merchant : Merchant ]
	
    static constraints = {
		type(blank:true,nullable:true)
		url(blank:true,nullable:true)
		width(blank:true,nullable:true)
		height(blank:true,nullable:true)
    }
}
