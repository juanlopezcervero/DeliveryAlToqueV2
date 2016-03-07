package delivery.al.toque.protocol

import grails.orm.HibernateCriteriaBuilder
import delivery.al.toque.Merchant
import delivery.al.toque.protocol.entities.MerchantDTO

class MerchantService extends EntityService<MerchantDTO, Merchant> {

	@Override
	public Class getDtoClass() {
		return MerchantDTO.class
	}

	@Override
	public Class getEntityClass() {
		return Merchant.class
	}

	@Override
	public HibernateCriteriaBuilder getEntityCriteria() {
		return Merchant.createCriteria();
	}
	
	
	@Override
	public Object setAutomaticFieldValues(Merchant entity) {
		return entity;
	}
	
	@Override
	public EntityDTO getNewDto() {
		return new MerchantDTO();
	}
}
