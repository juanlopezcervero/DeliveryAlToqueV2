package delivery.al.toque

import delivery.al.toque.extended.BusinessId;
import delivery.al.toque.extended.Image;
import delivery.al.toque.extended.MerchantUser;

class Merchant extends Entity {
	
	String name
	CreditsData credits
	String status
	String eMail
	String category
	String country
	String phone
	
	List<Image> images
	List<BusinessId> businessIds
	
	static hasMany = [ images : Image, businessIds: BusinessId]

	static mapping = {
		images cascade:"all-delete-orphan"
	}
	
	static embedded = ['credits']
	
    static constraints = {
		credits(blank:true,nullable:true)
		status(blank:true,nullable:true)
		eMail(blank:true,nullable:true)
		category(blank:true,nullable:true)
		name(blank:true,nullable:true)
		phone(blank:true,nullable:true)
    }
}
