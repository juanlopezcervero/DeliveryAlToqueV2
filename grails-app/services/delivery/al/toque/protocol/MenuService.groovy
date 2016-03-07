package delivery.al.toque.protocol

import grails.orm.HibernateCriteriaBuilder
import delivery.al.toque.Menu
import delivery.al.toque.protocol.entities.MenuDTO

class MenuService extends EntityService<MenuDTO, Menu> {

	@Override
	public Class getDtoClass() {
		return MenuDTO.class
	}

	@Override
	public Class getEntityClass() {
		return Menu.class
	}
	

	@Override
	public HibernateCriteriaBuilder getEntityCriteria() {
		return Menu.createCriteria();
	}
	
	
	@Override
	public Object setAutomaticFieldValues(Menu entity) {
		return entity;
	}
	
	@Override
	public EntityDTO getNewDto() {
		return new MenuDTO();
	}
	
}
