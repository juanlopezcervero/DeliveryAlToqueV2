package delivery.al.toque.protocol

import grails.orm.HibernateCriteriaBuilder

import java.text.SimpleDateFormat

import org.apache.commons.lang.RandomStringUtils
import org.hibernate.criterion.Criterion
import org.hibernate.criterion.Example
import org.hibernate.criterion.Restrictions

import delivery.al.toque.DozerMapper
import delivery.al.toque.Entity
import delivery.al.toque.protocol.exception.EntityServiceException;
import delivery.al.toque.protocol.exception.EntityVersionException
import delivery.al.toque.protocol.exception.UpdateEntityException

abstract class EntityService<T extends EntityDTO, E extends Entity> {
	
	static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ")
	static SimpleDateFormat uniqueIdSdf = new SimpleDateFormat("yyyyMMddHHmmssSSS")
	
	static {
		sdf.setTimeZone(TimeZone.getTimeZone("UTC"))
	}
	
	abstract Class getDtoClass()
	abstract Class getEntityClass()
	abstract HibernateCriteriaBuilder getEntityCriteria()
	abstract setAutomaticFieldValues(E entity)
	abstract EntityDTO getNewDto()

//	Override to make actions after an entity had been created
	protected void onEntityCreated(T entityDto) {
		//	DO NOTHING
	}
	
//	Override to make actions after an entity had been updated
	protected void onEntityUpdated(T entityDto) {
		//	DO NOTHING
	}
	
//	Override to make actions after an entity had been deleted
	protected void onEntityDeleted(T entityDto) {
		//	DO NOTHING
	}
	
//	Override method to validate before execute
	protected ValidationResult saveOrUpdateValidation(E entity) {
		return new ValidationResult(isOk: Boolean.TRUE)
	}
	
	List<T> sync(T dto) {
    	List<T> result = new ArrayList<T>()
		E example = DozerMapper.getInstance().map(dto, getEntityClass())

		
		def criteriaBuilder = getEntityCriteria()
		def criteriaExample = Example.create(example).ignoreCase().excludeNone().excludeZeroes()
		
		def criterion = null
		
		if (dto.getTimeStamp()) {
			Date timeStamp = sdf.parse(dto.getTimeStamp())
			criterion = Restrictions.and(criteriaExample, Restrictions.gt("lastUpdated",timeStamp))
		}
		
		criterion = Restrictions.and(criteriaExample, Restrictions.or(Restrictions.isNull("deleted"),Restrictions.ne("deleted", Boolean.TRUE)))
		
		
		if (dto.getId() != null) {
			criterion = Restrictions.and(Restrictions.eq("id",Long.valueOf(dto.getId())),criterion)
		}
		
		
		def criteria = criteriaBuilder.buildCriteria {}
		
		criteria = criteria.add(criterion)
		
		List<E> entities = criteria.list()
		
		entities.each { entity ->
			T resultDto = DozerMapper.getInstance().map(entity, getDtoClass())
			if (resultDto.deleted) {
				resultDto.setStatus("DELETE")
			}
			result.add(resultDto)
		}
		return result
    }
	
	List<T> saveOrUpdate(T dto) {
		List<T> result = new ArrayList<T>()
		E updateEntity = DozerMapper.getInstance().map(dto, getEntityClass())
		E entity = updateEntity
		Boolean isUpdate = false
		
		if (updateEntity.id != null) {
			isUpdate = true
			entity = E.get(updateEntity.id)
			if (updateEntity.version) {
				def version = updateEntity.version.toLong()
						if (entity.version > version ) {
							throw new EntityVersionException("VERSION ERROR")
						}
						if (updateEntity.uniqueId != entity.uniqueId) {
							throw new EntityVersionException("UNIQUEID MISMATCH")
						}
			}
			
			updateEntity.dateCreated = entity.dateCreated
			
			entity.properties = updateEntity.properties
		} else {
			isUpdate = false
			entity.setUniqueId(uniqueIdSdf.format(new Date()) + RandomStringUtils.random(16, "0123456789ABCDEF"))
			setAutomaticFieldValues(entity)
		}
		
		
		def validationResult = saveOrUpdateValidation(entity)
		if (validationResult.isOk) {
			if (!entity.save(flush: true)) {
				throw new UpdateEntityException(entity.getErrors())
			}
		} else {
			throw new UpdateEntityException(validationResult.message)
		}
		
		
		T resultDto = DozerMapper.getInstance().map(entity, getDtoClass())
		result.add(resultDto)
		
		if (isUpdate) {
			onEntityUpdated(resultDto)
		} else {
			onEntityCreated(resultDto)
		}
		
		return result
	}
	
	List<T> delete(T dto) {
		E entity = E.get(dto.getId())
		T deleteDto = DozerMapper.getInstance().map(entity, getDtoClass())
		deleteDto.deleted = dto.deleted
		deleteDto.status = dto.status
		List<T> result = saveOrUpdate(deleteDto)
		result.each { resultDto ->
			if (resultDto.deleted) {
				resultDto.setStatus("DELETE")
			}
		}
		onEntityDeleted(dto)
		return result
	}

}
