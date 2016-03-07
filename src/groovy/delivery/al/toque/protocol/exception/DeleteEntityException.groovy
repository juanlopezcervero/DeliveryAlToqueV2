package delivery.al.toque.protocol.exception

import delivery.al.toque.protocol.ErrorData;

class DeleteEntityException extends EntityServiceException {

	public DeleteEntityException() {
		super("DELETE ERROR")
	}
	
	@Override
	public ErrorData getErrorDto() {
		return createErrorData("003")
	}

	
}
