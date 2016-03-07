package delivery.al.toque.protocol

import grails.orm.HibernateCriteriaBuilder
import delivery.al.toque.VerifyLink
import delivery.al.toque.protocol.entities.VerifyLinkDTO

class VerifyLinkService extends EntityService<VerifyLinkDTO, VerifyLink> {

	@Override
	public Class getDtoClass() {
		return VerifyLinkDTO.class
	}

	@Override
	public Class getEntityClass() {
		return VerifyLink.class
	}
	

	@Override
	public HibernateCriteriaBuilder getEntityCriteria() {
		return VerifyLink.createCriteria();
	}
	
	@Override
	protected ValidationResult saveOrUpdateValidation(VerifyLink entity) {
		// TODO execute AppUser validation
		return super.saveOrUpdateValidation(entity);
	}
	
	
	@Override
	public Object setAutomaticFieldValues(VerifyLink entity) {
		return entity;
	}
	
	@Override
	public EntityDTO getNewDto() {
		return new VerifyLinkDTO();
	}
	
}
