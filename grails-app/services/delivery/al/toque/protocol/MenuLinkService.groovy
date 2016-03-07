package delivery.al.toque.protocol

import grails.orm.HibernateCriteriaBuilder
import delivery.al.toque.MenuLink
import delivery.al.toque.protocol.entities.MenuLinkDTO

class MenuLinkService extends EntityService<MenuLinkDTO, MenuLink> {

	@Override
	public Class getDtoClass() {
		return MenuLinkDTO.class
	}

	@Override
	public Class getEntityClass() {
		return MenuLink.class
	}
	

	@Override
	public HibernateCriteriaBuilder getEntityCriteria() {
		return MenuLink.createCriteria();
	}
	
	@Override
	protected ValidationResult saveOrUpdateValidation(MenuLink entity) {
		// TODO execute AppUser validation
		return super.saveOrUpdateValidation(entity);
	}
	
	
	@Override
	public Object setAutomaticFieldValues(MenuLink entity) {
		return entity;
	}
	
	@Override
	public EntityDTO getNewDto() {
		return new MenuLinkDTO();
	}
	
}
