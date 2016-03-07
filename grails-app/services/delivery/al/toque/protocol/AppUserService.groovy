package delivery.al.toque.protocol

import grails.orm.HibernateCriteriaBuilder
import delivery.al.toque.AppUser
import delivery.al.toque.protocol.entities.AppUserDTO

class AppUserService extends EntityService<AppUserDTO, AppUser> {

	@Override
	public Class getDtoClass() {
		return AppUserDTO.class
	}

	@Override
	public Class getEntityClass() {
		return AppUser.class
	}
	

	@Override
	public HibernateCriteriaBuilder getEntityCriteria() {
		return AppUser.createCriteria();
	}
	
	@Override
	protected ValidationResult saveOrUpdateValidation(AppUser entity) {
		// TODO execute AppUser validation
		return super.saveOrUpdateValidation(entity);
	}
	
	
	@Override
	public Object setAutomaticFieldValues(AppUser entity) {
		return entity;
	}
	
	@Override
	public EntityDTO getNewDto() {
		return new AppUserDTO();
	}
	
}
