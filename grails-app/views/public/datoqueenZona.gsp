<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap"/>
		<title>Delivery al toque en ...</title>
		
		<script src="${resource(dir: 'js', file: 'delivery/jquery.maphilight.min.js')}"></script>
		
	</head>

	
	<body>
		<div class="worldMapContainer">
			<p class="nav-header">Delivery al toque en ${pais}</p>
			<div class="datoqueEnPaisDiv">
				<g:each in="${negocioList}" var="negocio" >
					<span class="imagenNegocio">
						<img alt="${negocio.nombre}" src="${createLink(controller: 'images')}?imagePath=negocio/${negocio.id}/imagen" />
					</span>
				</g:each>
			</div>
		</div>
		
	</body>
</html>
