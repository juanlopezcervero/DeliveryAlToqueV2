package delivery.al.toque.protocol

import grails.orm.HibernateCriteriaBuilder
import delivery.al.toque.protocol.entities.InstallationDTO
import delivery.al.toque.Installation

class InstallationService extends EntityService<InstallationDTO, Installation>{

	@Override
	public Class getDtoClass() {
		return InstallationDTO.class
	}

	@Override
	public Class getEntityClass() {
		return Installation.class
	}


	@Override
	public HibernateCriteriaBuilder getEntityCriteria() {
		return Installation.createCriteria();
	}

	@Override
	public Object setAutomaticFieldValues(Installation entity) {
		return entity;
	}

	@Override
	public EntityDTO getNewDto() {
		return new InstallationDTO();
	}
    	
}
