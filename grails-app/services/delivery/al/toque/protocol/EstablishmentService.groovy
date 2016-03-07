package delivery.al.toque.protocol

import grails.orm.HibernateCriteriaBuilder
import delivery.al.toque.Establishment
import delivery.al.toque.protocol.entities.EstablishmentDTO

class EstablishmentService extends EntityService<EstablishmentDTO, Establishment> {

	@Override
	public Class getDtoClass() {
		return EstablishmentDTO.class
	}

	@Override
	public Class getEntityClass() {
		return Establishment.class
	}
	

	@Override
	public HibernateCriteriaBuilder getEntityCriteria() {
		return Establishment.createCriteria();
	}
	
	
	@Override
	public Object setAutomaticFieldValues(Establishment entity) {
		return entity;
	}
	
	@Override
	public EntityDTO getNewDto() {
		return new EstablishmentDTO();
	}
	
}
