package delivery.al.toque.extended

import delivery.al.toque.Merchant;

class MerchantUser {
	
	String personId
	String role

	static belongsTo = [ merchant : Merchant ]
	
    static constraints = {
		personId(blank:true,nullable:true)
		role(blank:true,nullable:true)
    }
}
