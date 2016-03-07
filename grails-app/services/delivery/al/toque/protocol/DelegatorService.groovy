package delivery.al.toque.protocol

import org.springframework.beans.factory.InitializingBean

import delivery.al.toque.Entity
import delivery.al.toque.protocol.entities.AddressDTO
import delivery.al.toque.protocol.entities.AppUserDTO
import delivery.al.toque.protocol.entities.DeliveryOrderDTO
import delivery.al.toque.protocol.entities.EnumDTO
import delivery.al.toque.protocol.entities.EstablishmentDTO
import delivery.al.toque.protocol.entities.InstallationDTO
import delivery.al.toque.protocol.entities.MenuDTO
import delivery.al.toque.protocol.entities.MenuLinkDTO
import delivery.al.toque.protocol.entities.MerchantDTO
import delivery.al.toque.protocol.entities.VerifyLinkDTO
import delivery.al.toque.protocol.exception.EntityServiceException

class DelegatorService implements InitializingBean {
	
	private Map<String, EntityService<EntityDTO, Entity>> serviceMap = new HashMap<String, EntityService<EntityDTO>>()

	def addressService
	def appUserService
	def merchantService
	def establishmentService
	def menuService
	def enumService
	def installationService
	def deliveryOrderService
	def menuLinkService
	def verifyLinkService
	
	
	public void afterPropertiesSet() throws Exception {
		serviceMap.put(AddressDTO.class.toString(), addressService)
		serviceMap.put(AppUserDTO.class.toString(), appUserService)
		serviceMap.put(MerchantDTO.class.toString(), merchantService)
		serviceMap.put(EstablishmentDTO.class.toString(), establishmentService)
		serviceMap.put(MenuDTO.class.toString(), menuService)
		serviceMap.put(EnumDTO.class.toString(), enumService)
		serviceMap.put(InstallationDTO.class.toString(), installationService)
		serviceMap.put(DeliveryOrderDTO.class.toString(), deliveryOrderService)
		serviceMap.put(MenuLinkDTO.class.toString(), menuLinkService)
		serviceMap.put(VerifyLinkDTO.class.toString(), verifyLinkService)
	}

	
    List<EntityDTO> process(EntityDTO entityDto) {
		
		if (entityDto.getStatus() != null && entityDto.getStatus().equalsIgnoreCase("DELETE")) {
			entityDto.setDeleted(Boolean.TRUE)
		}
		
		try {
			EntityService<EntityDTO, Entity> entityService = setEntityService(entityDto)
			if (entityService) {
				
				List<EntityDTO> operationResult = processOperation(entityDto, entityService)
				
				return operationResult
			}
		} catch (EntityServiceException e) {
			List<EntityDTO> result = new ArrayList<EntityDTO>()
			entityDto.setError(e.getErrorDto())
			result.add(entityDto)
			return result
		} catch (Exception ex) {
			List<EntityDTO> result = new ArrayList<EntityDTO>()
			ErrorData errorData = new ErrorData()
			errorData.setCode("-1")
			errorData.setDetail(ex.getMessage())
			entityDto.setError(errorData)
			result.add(entityDto)
		}
    }

	
	private List<EntityDTO> processOperation(EntityDTO dto, EntityService<EntityDTO, Entity> entityService) {
		if (dto.getTimeStamp() != null && !dto.getTimeStamp().empty)
			return entityService.sync(dto)
		else {
			if (dto.deleted) {
				return entityService.delete(dto)
			} else { 
				return entityService.saveOrUpdate(dto)
			}
		}
	}
	
	
	private EntityService<EntityDTO, Entity> setEntityService(EntityDTO entityDto) {
		String dtoClass = entityDto.getClass().toString()
		return serviceMap.get(dtoClass)
	}
	
	
		
}
