<%@ page import="delivery.al.toque.ImageUpload" %>
<%@ page import="delivery.al.toque.ImageTypes" %>
<%@ page import="delivery.al.toque.Merchant" %>
<!doctype html>
<html>
	<head>
	</head>
	<body>
		<div>
			<g:if test="${flash.message}">
				<div class="alert-info">${flash.message}</div>
			</g:if>
		</div>
		<div>
			<g:uploadForm class="form-horizontal" action="uploadImage"  enctype="multipart/form-data">
				<fieldset>
					<f:with bean="imageUploadInstance">
						<f:field property="merchantId">
							<g:select id="merchantId" name='merchantId' 
    							from='${Merchant.findAllByDeletedIsNullOrDeletedNotEqual(Boolean.TRUE)}'
    									optionKey="id" optionValue="name"></g:select>
						</f:field>
						<f:field property="imageType">
							<g:select id="imageType" name='imageType' 
    							from='${ImageTypes.list()}'
    									optionKey="key" optionValue="value"></g:select>
						</f:field>
						<f:field property="width"/>
						<f:field property="height"/>
						<f:field property="imageFile">
							<input type="file" name="imageFile"/>
						</f:field>
					</f:with>
					<div class="form-actions">
						<button type="submit" class="btn btn-primary">
							<i class="icon-ok icon-white"></i>
							<g:message code="default.button.upload.label" default="Subir imagen" />
						</button>
					</div>
				</fieldset>
			</g:uploadForm>	
		</div>
	</body>
</html>