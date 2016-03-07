package delivery.al.toque.protocol

import grails.orm.HibernateCriteriaBuilder
import delivery.al.toque.Enum
import delivery.al.toque.protocol.entities.EnumDTO

class EnumService extends EntityService<EnumDTO, Enum> {

	@Override
	public Class getDtoClass() {
		return EnumDTO.class
	}

	@Override
	public Class getEntityClass() {
		return Enum.class
	}
	

	@Override
	public HibernateCriteriaBuilder getEntityCriteria() {
		return Enum.createCriteria();
	}
	
	
	@Override
	public Object setAutomaticFieldValues(Enum entity) {
		return entity;
	}
	
	@Override
	public EntityDTO getNewDto() {
		return new EnumDTO();
	}
}
