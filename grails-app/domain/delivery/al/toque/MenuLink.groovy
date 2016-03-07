package delivery.al.toque

class MenuLink extends Entity {
	
	String mechantId
	String menuId
	String establishmentId
	
	String attributes

    static constraints = {
		mechantId(blank:true,nullable:true)
		menuId(blank:true,nullable:true)
		establishmentId(blank:true,nullable:true)
		attributes(blank:true,nullable:true)
    }
	
	static mapping = {
		attributes sqlType: 'nvarchar(MAX)'
	}
}
