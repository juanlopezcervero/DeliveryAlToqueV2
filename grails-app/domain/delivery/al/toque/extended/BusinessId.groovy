package delivery.al.toque.extended

import delivery.al.toque.Merchant;

class BusinessId {

	String type
	String detail
	
    static belongsTo = [ merchant : Merchant ]
	
    static constraints = {
		type(blank:true,nullable:true)
		detail(blank:true,nullable:true)
    }
}
