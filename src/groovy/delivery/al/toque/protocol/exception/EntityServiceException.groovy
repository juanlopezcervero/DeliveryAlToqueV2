package delivery.al.toque.protocol.exception

import org.springframework.validation.Errors;

import delivery.al.toque.protocol.ErrorData


abstract class EntityServiceException extends Exception {

	String errorText
	
	public EntityServiceException(Errors errors) {
		errorText = errors.toString()
	}
	
	public EntityServiceException(String error) {
		errorText = error
	}
	
	public abstract ErrorData getErrorDto()
	
	private ErrorData createErrorData(String code) {
		ErrorData error = new ErrorData()
		error.setCode(code)
		error.setDetail((errorText)?:this.getMessage())
		return error
	}
	
}
