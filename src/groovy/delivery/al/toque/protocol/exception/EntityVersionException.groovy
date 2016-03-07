

package delivery.al.toque.protocol.exception

import org.springframework.validation.Errors

import delivery.al.toque.protocol.ErrorData

class EntityVersionException extends EntityServiceException {

	public EntityVersionException(Object errors) {
		super(errors)
	}
	
	@Override
	public ErrorData getErrorDto() {
		return createErrorData("002", "VERSION ERROR")
	}
	
}
