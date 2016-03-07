package delivery.al.toque.protocol.exception

import org.springframework.validation.Errors;

import delivery.al.toque.protocol.ErrorData;

class UpdateEntityException extends EntityServiceException {

	public UpdateEntityException(Object errors) {
		super(errors)
	}
	
	@Override
	public ErrorData getErrorDto() {
		return createErrorData("001", "UPDATE ERROR")
	}
	
}
