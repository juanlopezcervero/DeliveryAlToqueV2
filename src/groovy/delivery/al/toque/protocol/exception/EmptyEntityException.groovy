package delivery.al.toque.protocol.exception

import delivery.al.toque.protocol.ErrorData;

class EmptyEntityException extends EntityServiceException {

	public EmptyEntityException() {
		super("NO ENTITIES")
	}
	
	@Override
	public ErrorData getErrorDto() {
		return createErrorData("004")
	}
	
}
