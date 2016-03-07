package delivery.al.toque.protocol

import grails.orm.HibernateCriteriaBuilder
import delivery.al.toque.DeliveryOrder
import delivery.al.toque.protocol.entities.DeliveryOrderDTO

class DeliveryOrderService extends EntityService<DeliveryOrderDTO, DeliveryOrder>{

	@Override
	public Class getDtoClass() {
		return DeliveryOrderDTO.class
	}

	@Override
	public Class getEntityClass() {
		return DeliveryOrder.class
	}


	@Override
	public HibernateCriteriaBuilder getEntityCriteria() {
		return DeliveryOrder.createCriteria();
	}

	@Override
	public Object setAutomaticFieldValues(DeliveryOrder entity) {
		return entity;
	}

	@Override
	public EntityDTO getNewDto() {
		return new DeliveryOrderDTO();
	}
    	
}
