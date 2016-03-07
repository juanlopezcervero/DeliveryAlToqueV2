<%@ page import="org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes" %>
<!DOCTYPE html>

<!--[if IE 7]>                  <html class="ie7 no-js" lang="en">     <![endif]-->
<!--[if lte IE 8]>              <html class="ie8 no-js" lang="en">     <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="not-ie no-js" lang="en">  <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title><g:layoutTitle default="${meta(name: 'app.name')}"/></title>
	<meta name="description" content="">
	<meta name="author" content="">
	
	<r:require modules="scaffolding"/>
	<r:layoutResources/>
	
<%--	<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">--%>
<%--	<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">--%>
<%--	<link rel="stylesheet" href="${resource(dir: 'css', file: 'errors.css')}" type="text/css">--%>
<%--	<link rel="stylesheet" href="${resource(dir: 'css', file: 'scaffolding.css')}" type="text/css">--%>
		
	
	<!--[if !lte IE 6]><!-->
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'delivery/style.css')}" media="screen" />
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,300,800,700,400italic|PT+Serif:400,400italic" />
	<!--<![endif]-->
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'deliveryaltoque.css')}" type="text/css">

	<!--[if lte IE 6]>
	<link rel="stylesheet" href="//universal-ie6-css.googlecode.com/files/ie6.1.1.css" media="screen, projection">
	<![endif]-->
	
	<!-- jQuery library - Please load it from Google API's -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" ></script>
	
	<!--[if lt IE 9]> <script src="${resource(dir: 'js', file: 'delivery/selectivizr-and-extra-selectors.min.js')}"></script> <![endif]-->
	<script src="${resource(dir: 'js', file: 'delivery/respond.min.js')}"></script>
	<script
		src="${resource(dir: 'js', file: 'delivery/jquery.easing-1.3.min.js')}"></script>
	<script
		src="${resource(dir: 'js', file: 'delivery/jquery.fancybox.pack.js')}"></script>
	<script
		src="${resource(dir: 'js', file: 'delivery/jquery.jcarousel.min.js')}"></script>
	<script
		src="${resource(dir: 'js', file: 'delivery/jquery.cycle.all.min.js')}"></script>
	<script
		src="${resource(dir: 'js', file: 'delivery/jquery.isotope.min.js')}"></script>
	<script
		src="${resource(dir: 'js', file: 'delivery/jquery.touchSwipe.min.js')}"></script>
		
	<!-- social -->
	<script
		src="${resource(dir: 'js', file: 'delivery/jquery.sharrre-1.3.3.js')}"></script>
	
	<!-- Slider -->
	<link href="${resource(dir: 'slider', file: 'js-image-slider.css')}"
		rel="stylesheet" type="text/css" />
	<script src="${resource(dir: 'slider', file: 'js-image-slider.js')}"
		type="text/javascript"></script>
	<!-- End Slider -->
		
		
	<script>

		function changeTitle(pais) {
			if (pais != '')
				document.title = 'Delivery al Toque en ' + pais;
			else
				document.title = 'Delivery al Toque';
		}
	
		$(function() {
			$('#twitter')
					.sharrre(
							{
								share : {
									twitter : true
								},
								url : 'http://www.deliveryaltoque.com',
								enableHover : false,
								enableTracking : true,
								template : '<a class="box" href="#"><div class="count" href="#">{total}</div><div class="share"><span></span>t</div></a>',
								buttons : {
									twitter : {
										via : 'deliveryaltoque'
									}
								},
								click : function(api, options) {
									api.simulateClick();
									api.openPopup('twitter');
								}
							});

			$('#facebook')
					.sharrre(
							{
								share : {
									facebook : true
								},
								url : 'http://www.deliveryaltoque.com',
								enableHover : false,
								enableTracking : true,
								template : '<a class="box" href="#"><div class="count" href="#">{total}</div><div class="share"><span></span>f</div></a>',
								click : function(api, options) {
									api.simulateClick();
									api.openPopup('facebook');
								}
							});

		});
	</script>	
	
	<!-- Smoothscroller -->
	<script
		src="${resource(dir: 'js', file: 'delivery/jquery-ui-1.8.23.custom.min.js')}"></script>
	
	<!-- poshytip -->
	<script
		src="${resource(dir: 'js', file: 'delivery/jquery.poshytip.min.js')}"></script>
	<!-- ENDS poshytip -->
	
	<script src="${resource(dir: 'js', file: 'delivery/backstretch.js')}"></script>
	<script src="${resource(dir: 'js', file: 'delivery/custom.js')}"></script>
	<!-- ENDS JS -->
	
	<!-- HTML5 Shiv + detect touch events -->
	<script src="${resource(dir: 'js', file: 'delivery/modernizr.min.js')}"></script>
	
	<script
		src="${resource(dir: 'js', file: 'delivery/languageswitcher.js')}"></script>

	<g:layoutHead/>
	
	
</head>

<body>
	
		<header id="header" class="clearfix">
			<section class="container clearfix">
				<a href="${createLink(uri: '/')}" id="logo"> <img src="${resource(dir: 'images', file: 'delivery/logo.png')}"
					alt="delivery al toque">
				</a>
				<div id="country-select">
					<form action="#" >
						<select id="country-options" name="country-options">
							<option title="javascript:changeTitle('Argentina')" value="ar">Argentina</option>
							<option title="javascript:changeTitle('United States')" value="us">United States</option>
							<option title="javascript:changeTitle('Brasil')" value="br">Brasil</option>
							<option title="javascript:changeTitle('')" selected="selected" title="#">Selecciona tu País</option>
						</select> <input value="Select" type="submit" />
					</form>
				</div>
				<div class="signin-box">
					<form novalidate="" id="loginform" action="${createLink(controller: 'logout')}" method="post"
						class="log">
						<strong>Bienvenido</strong>&nbsp;<sec:loggedInUserInfo field="username"/>&nbsp;
						<input type="submit"
							name="signIn" id="signIn" value="Cerrar sesión"> <input
							type="hidden" name="rmShown" value="1">
					</form>
				</div>
				<nav id="main-nav">
					<ul>
						<li<%= request.forwardURI == "${createLink(uri: '/')}" ? ' class="current"' : '' %> id="home"><a href="${createLink(uri: '/')}">Inicio</a></li>
						<sec:ifAllGranted roles="ROLE_ADMIN">
							<li<%= 'negocio' == controllerName ? ' class="current"' : '' %>>
								<a href="${createLink(controller: 'negocio')}">Negocios</a>
							</li>
							<li<%= 'tag' == controllerName ? ' class="current"' : '' %>>
								<a href="${createLink(controller: 'tag')}">Tags</a>
							</li>
							<li<%= ('usuario' == controllerName || 'person' == controllerName) ? ' class="current"' : '' %>>
								<a href="#">Usuarios</a>
								<ul>
									<li<%= ('usuario' == controllerName) ? ' class="current"' : '' %>>
										<a href="${createLink(controller: 'usuario')}">Usuarios finales</a>
									</li>
									<li<%= ('person' == controllerName) ? ' class="current"' : '' %>>
										<a href="${createLink(controller: 'person')}">Operadores</a>
									</li>
								</ul>
							</li>
							<li<%= 'pedido' == controllerName ? ' class="current"' : '' %>>
								<a href="${createLink(controller: 'pedido')}">Pedidos</a>
							</li>
							<li<%= 'paquete' == controllerName ? ' class="current"' : '' %>>
								<a href="${createLink(controller: 'paquete')}">Paquetes</a>
							</li>
						</sec:ifAllGranted>
						<sec:ifAllGranted roles="ROLE_OP_NEGOCIO">
							<li<%= 'negocio' == controllerName ? ' class="current"' : '' %>>
								<a href="${createLink(controller: 'negocio', action: 'showData')}">Negocio</a>
							</li>
							<li<%= 'sucursal' == controllerName ? ' class="current"' : '' %>><a href="${createLink(controller: 'sucursal', action: 'listByNegocioOperador')}">Sucursales</a></li>
							<li<%= 'pedido' == controllerName ? ' class="current"' : '' %>><a href="${createLink(controller: 'pedido', action: 'listPedidosOperador')}">Pedidos</a></li>
							<li<%= ('compra' == controllerName || 'paquete' == controllerName) ? ' class="current"' : '' %>>
								<a href="#">Compras</a>
								<ul>
									<li<%= 'compra' == controllerName ? ' class="current"' : '' %>><a href="${createLink(controller: 'compra', action: 'listByNegocio')}">Historial de compras</a></li>
									<li<%= 'paquete' == controllerName ? ' class="current"' : '' %>><a href="${createLink(controller: 'paquete', action: 'list')}">Comprar paquete</a></li>
								</ul>
							</li>
						</sec:ifAllGranted>
						<sec:ifAllGranted roles="ROLE_OP_SUCURSAL">
							<li<%= 'sucursal' == controllerName ? ' class="current"' : '' %>><a href="${createLink(controller: 'sucursal', action: 'showData')}">Sucursal</a></li>
							<li<%= 'pedido' == controllerName ? ' class="current"' : '' %>><a href="${createLink(controller: 'pedido', action: 'listPedidosOperador')}">Pedidos</a></li>
							<li<%= ('compra' == controllerName || 'paquete' == controllerName) ? ' class="current"' : '' %>>
								<a href="#">Compras</a>
								<ul>
									<li<%= 'compra' == controllerName ? ' class="current"' : '' %>><a href="${createLink(controller: 'compra', action: 'listBySucursal')}">Historial de compras</a></li>
									<li<%= 'paquete' == controllerName ? ' class="current"' : '' %>><a href="${createLink(controller: 'paquete', action: 'list')}">Comprar paquete</a></li>
								</ul>
							</li>
						</sec:ifAllGranted>
					</ul>
				</nav>
				<!-- end #main-nav -->
<%--				<div>--%>
<%--					<h1 class="page-title">${entityName}</h1>--%>
<%--				</div>--%>
			</section>
		</header>
		<!-- end #header -->
			
		<section id="content" class="container clearfix">
			<g:if test="${params.controller && params.action}">
				<div id="slider"><img src="${createLink(controller: 'sliderImages', action: 'showImage')}?imagePath=${params.controller}/${params.action}/image-slider-1.jpg" alt="" /><img src="${createLink(controller: 'sliderImages', action: 'showImage')}?imagePath=${params.controller}/${params.action}/image-slider-2.jpg" alt="" /><img src="${createLink(controller: 'sliderImages', action: 'showImage')}?imagePath=${params.controller}/${params.action}/image-slider-3.jpg" alt="" /></div>	
			</g:if>

			<g:layoutBody />
		</section>
		<!-- end #content -->
		<footer id="footer" class="clearfix">
			<div class="container">
				<div class="three-fourth">
					<ul>
						<li><img src="${resource(dir: 'images', file: 'delivery/language.png')}">
							<div id="lenguage-select">
								<form id="languageForm" action=".">
									<select id="lenguage-options" name="lang" onchange="javascript:$('#languageForm').submit()" >
										<option selected="selected" title="#" value="">Selecciona
											tu Idioma</option>
										<option title="#" value="es">Español</option>
										<option title="#" value="en">Ingles</option>
										<option title="#" value="pt">Portugues</option>
									</select>
								</form>
							</div></li>
						<li><a href="#">Legal Notice</a></li>
						<li><a href="#">Terms</a></li>
					</ul>
				</div>
				<div class="one-fourth last">
					<span class="contact-info">Delivery al Toque® 2013</span>
				</div>
			</div>
		</footer>
		<!-- end #footer-bottom -->
		<r:layoutResources/>
	</body>
</html>

<%----%>
<%--<html lang="en">--%>
<%--	<head>--%>
<%--		<meta charset="utf-8">--%>
<%--		<title><g:layoutTitle default="${meta(name: 'app.name')}"/></title>--%>
<%--		<meta name="description" content="">--%>
<%--		<meta name="author" content="">--%>
<%----%>
<%--		<meta name="viewport" content="initial-scale = 1.0">--%>
<%----%>
<%--		<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->--%>
<%--		<!--[if lt IE 9]>--%>
<%--			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>--%>
<%--		<![endif]-->--%>
<%--		--%>
<%--		<r:require modules="scaffolding"/>--%>
<%----%>
<%--		<!-- Le fav and touch icons -->--%>
<%--		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">--%>
<%--		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">--%>
<%--		<link rel="apple-touch-icon" sizes="72x72" href="${resource(dir: 'images', file: 'apple-touch-icon-72x72.png')}">--%>
<%--		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-114x114.png')}">--%>
<%----%>
<%--		<g:layoutHead/>--%>
<%--		<r:layoutResources/>--%>
<%--		<link rel="stylesheet" href="${resource(dir: 'css', file: 'deliveryaltoque.css')}" type="text/css">--%>
<%--	</head>--%>
<%----%>
<%--	<body>--%>
<%----%>
<%--		<nav class="navbar navbar-fixed-top">--%>
<%--			<div class="navbar-inner">--%>
<%--				<div class="container-fluid">--%>
<%--					--%>
<%--					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">--%>
<%--						<span class="icon-bar"></span>--%>
<%--						<span class="icon-bar"></span>--%>
<%--						<span class="icon-bar"></span>--%>
<%--					</a>--%>
<%--					--%>
<%--					<a class="brand" style="padding-top: 0px; padding-bottom: 1px;" href="${createLink(uri: '/')}"><img class="logoDeliveryAlToque" src="${resource(dir: 'images', file: 'Deliveryaltoque.jpg')}" alt="Grails"/></a>--%>
<%----%>
<%--					<div class="nav-collapse">--%>
<%--						<ul class="nav">							--%>
<%--							<li<%= request.forwardURI == "${createLink(uri: '/')}" ? ' class="active"' : '' %>><a href="${createLink(uri: '/')}">Home</a></li>--%>
<%--							<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">--%>
<%--								<li<%= c.logicalPropertyName == controllerName ? ' class="active"' : '' %>><g:link controller="${c.logicalPropertyName}">${c.naturalName}</g:link></li>--%>
<%--							</g:each>--%>
<%--							<li<%= 'negocio' == controllerName ? ' class="active"' : '' %>><g:link controller="negocio">Negocios</g:link></li>--%>
<%--							<li<%= 'tag' == controllerName ? ' class="active"' : '' %>><g:link controller="tag">Tags</g:link></li>--%>
<%--							<li<%= 'usuario' == controllerName ? ' class="active"' : '' %>><g:link controller="usuario">Usuarios</g:link></li>--%>
<%--							<li<%= 'pedido' == controllerName ? ' class="active"' : '' %>><g:link controller="pedido">Pedidos</g:link></li>--%>
<%--							<li<%= 'logout' == controllerName ? ' class="active"' : '' %>><g:link controller="logout">Salir</g:link></li>--%>
<%--						</ul>--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>
<%--		</nav>--%>
<%----%>
<%--		<div class="container-fluid">--%>
<%--			<g:layoutBody/>--%>
<%----%>
<%--			<hr>--%>
<%----%>
<%--			<footer>--%>
<%--				<p>&copy; Fundaci&oacute;n Ada Byron 2013</p>--%>
<%--			</footer>--%>
<%--		</div>--%>
<%----%>
<%--		<r:layoutResources/>--%>
<%----%>
<%--	</body>--%>
<%--</html>--%>