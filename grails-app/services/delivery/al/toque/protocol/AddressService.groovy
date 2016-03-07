package delivery.al.toque.protocol

import grails.orm.HibernateCriteriaBuilder
import delivery.al.toque.Address
import delivery.al.toque.protocol.entities.AddressDTO

class AddressService extends EntityService<AddressDTO, Address>{

	@Override
	public Class getDtoClass() {
		return AddressDTO.class
	}

	@Override
	public Class getEntityClass() {
		return Address.class
	}


	@Override
	public HibernateCriteriaBuilder getEntityCriteria() {
		return Address.createCriteria();
	}

	@Override
	public Object setAutomaticFieldValues(Address entity) {
		return entity;
	}

	@Override
	public EntityDTO getNewDto() {
		return new AddressDTO();
	}
    	
}
