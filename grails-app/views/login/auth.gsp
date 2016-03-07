
<!--[if IE 7]>                  <html class="ie7 no-js" lang="en">     <![endif]-->
<!--[if lte IE 8]>              <html class="ie8 no-js" lang="en">     <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="not-ie no-js" lang="en">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<title><g:message code="springSecurity.login.title" /></title>

<meta name="description" content="">
<meta name="author" content="">

<!--[if !lte IE 6]><!-->
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'delivery/style.css')}"
	media="screen" />
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,300,800,700,400italic|PT+Serif:400,400italic" />
<!--<![endif]-->

<!--[if lte IE 6]>
<link rel="stylesheet" href="//universal-ie6-css.googlecode.com/files/ie6.1.1.css" media="screen, projection">
<![endif]-->

<!-- jQuery library - Please load it from Google API's -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

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

<script
	src="${resource(dir: 'js', file: 'jquery.qrcode-0.12.0.min.js')}"></script>



<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'deliveryaltoque.css')}"
	type="text/css">

</head>

<body id="index">

	<header id="header" class="clearfix">
		<div id="hereComesQr" style="position: absolute; top: 15px; left: 15px; background-color: white; z-index: 999">
		</div>
		<section class="container clearfix">
			<a href="${createLink(uri: '/')}" id="logo"> <img
				src="${resource(dir: 'images', file: 'delivery/logo.png')}"
				alt="delivery al toque">
			</a>
			<div id="country-select">
				<form id="country-select-form" action="#" onsubmit="javascript:changeTitle()">
					<select id="country-options" name="country-options">
						<option title="javascript:changeTitle('Argentina')" value="ar">Argentina</option>
							<option title="javascript:changeTitle('United States')" value="us">United States</option>
							<option title="javascript:changeTitle('Brasil')" value="br">Brasil</option>
							<option title="javascript:changeTitle('')" selected="selected" title="#">Selecciona tu País</option>
					</select> <input value="Select" type="submit" />
				</form>
			</div>
			<div class="signin-box">

				<form novalidate="" action='${postUrl}' method='POST' id='loginForm'
					autocomplete='off'>
					<div>
						<input type="email" spellcheck="false" name='j_username'
							id='username'
							value="${message(code: "springSecurity.login.username.label")}"
							onBlur="if(this.value=='') this.value='${message(code: "springSecurity.login.username.label")}';"
							onFocus="if(this.value=='${message(code: "springSecurity.login.username.label")}') this.value='';">
					</div>
					<div>
						<input type="password" name='j_password' id='password'
							value="${message(code: "springSecurity.login.password.label")}"
							onBlur="if(this.value=='') this.value='${message(code: "springSecurity.login.password.label")}';"
							onFocus="if(this.value=='${message(code: "springSecurity.login.password.label")}') this.value='';">
					</div>
					<input type='submit' id="submit"
						value='${message(code: "springSecurity.login.button")}' /> <input
						type="hidden" name="rmShown" value="1">
				</form>
				<ul>
					<li><a id="link-forgot-passwd" href="${createLink(controller: 'person', action: 'recuperarPassword')}" target="_top">¿No
							puedes acceder a tu cuenta?</a><a id="link-forgot-passwd" href="${createLink(controller: 'person', action: 'registro')}"
						target="_top">Registrarse</a></li>
				</ul>
			</div>
			<nav id="main-nav">
				<ul>
					<li id="home" class="current"><a href="index.html">Inicio</a>
					</li>
					<li><g:link controller="public" action="whatis">&iquest;Qu&eacute; es?</g:link></li>
					<li><g:link controller="public" action="howtouseit">&iquest;C&oacute;mo se usa?</g:link>
						
					</li>
					<li><g:link controller="public" action="datoqueen">Delivery al toque en…</g:link></li>
				</ul>
			</nav>
			<!-- end #main-nav -->
			<div id="scooter"></div>
			<div id="cuadro">
				<div id="description">
					<h4>¿Qué es?</h4>
					<p>
						<strong>Cras aliquet.</strong> Integer faucibus, eros ac molestie
						placerat, enim tellus varius lacus, nec dictum nunc tortor id
						urna.
					</p>
					<p>
						<a href="#" class="dropcap">+</a>
					</p>
				</div>
				<ul class="paso">
					<li><h3>Paso 1</h3>
						<p>
							<img src="${resource(dir: 'images', file: 'delivery/paso1.png')}">Maecenas
							elit orci, gravida non.
						</p>
						<p>
							<a href="#" class="dropcap">+</a>
						</p></li>
					<li><h3>Paso 2</h3>
						<p>
							<img src="${resource(dir: 'images', file: 'delivery/paso2.png')}">Maecenas
							elit orci, gravida non.
						</p>
						<p>
							<a href="#" class="dropcap">+</a>
						</p></li>
					<li><h3>Paso 3</h3>
						<p>
							<img src="${resource(dir: 'images', file: 'delivery/paso3.png')}">Maecenas
							elit orci, gravida non.
						</p>
						<p>
							<a href="#" class="dropcap">+</a>
						</p></li>
				</ul>
			</div>
			<div id="sliderFrame"></div>
			<div id="slider">
				<a href="#"><img
					src="${resource(dir: 'slider', file: 'images/image-slider-1.png')}"
					alt="" /></a><img
					src="${resource(dir: 'slider', file: 'images/image-slider-2.jpg')}"
					alt="" /><img
					src="${resource(dir: 'slider', file: 'images/image-slider-3.jpg')}"
					alt="" />
			</div>
			<div id="social">
				<div id="twitter" data-url="http://www.cromactiva.com.ar"
					data-title="Compartir con Twitter" class="sharrre">
					<a class="box" href="#"><div class="count" href="#">0</div>
						<div class="share">
							<span></span>t
						</div></a>
				</div>
				<div id="facebook" data-url="http://www.cromactiva.com.ar"
					data-title="Compartir con Facebook" class="sharrre">
					<a class="box" href="#"><div class="count" href="#">0</div>
						<div class="share">
							<span></span>f
						</div></a>
				</div>
			</div>
			</div>
		</section>
	</header>
	<!-- end #header -->
	<section id="subHead">
		<div class="container clearfix">
			<ul>
				<li><h1>Descargá la App</h1></li>
				<li><img
					src="${resource(dir: 'images', file: 'delivery/win.png')}"
					width="145" height="54"></li>
			</ul>
		</div>
	</section>
	<!-- end #subHead -->

	<footer id="footer" class="clearfix">
		<div class="container">
			<div class="three-fourth">
				<ul>
					<li><img
						src="${resource(dir: 'images', file: 'delivery/language.png')}">
						<div id="lenguage-select-alt">
							<form action="">
								<select id="lenguage-options" name="lenguage-options">
									<option selected="selected" title="#" value="">Selecciona
										tu Idioma</option>
									<option title="#" value="">Español</option>
									<option title="#" value="">Ingles</option>
									<option title="#" value="">Portugues</option>
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
	<script type="text/javascript">
		$.get( "../authenticate/byQR", function( data ) {
			var token = $(data).find("value").text();
			alert(token);
			$('#hereComesQr').empty().qrcode({
			    "size": 200,
			    "text": token
			});
		});
		
	</script>
</body>
</html>





<%----%>
<%--<body>--%>
<%--	<div id='login'>--%>
<%--		<div class='well inner'>--%>
<%--			<div class='fheader'>--%>
<%--				<g:message code="springSecurity.login.header" />--%>
<%--			</div>--%>
<%----%>
<%--			<g:if test='${flash.message}'>--%>
<%--				<div class='login_message'>--%>
<%--					${flash.message}--%>
<%--				</div>--%>
<%--			</g:if>--%>
<%----%>
<%--			<form action='${postUrl}' method='POST' id='loginForm'--%>
<%--				class='cssform' autocomplete='off'>--%>
<%--				<p>--%>
<%--					<label for='username'><g:message--%>
<%--							code="springSecurity.login.username.label" />:</label> <input type='text'--%>
<%--						class='text_' name='j_username' id='username' />--%>
<%--				</p>--%>
<%----%>
<%--				<p>--%>
<%--					<label for='password'><g:message--%>
<%--							code="springSecurity.login.password.label" />:</label> <input--%>
<%--						type='password' class='text_' name='j_password' id='password' />--%>
<%--				</p>--%>
<%----%>
<%--				<p id="remember_me_holder">--%>
<%--					<input type='checkbox' class='chk' name='${rememberMeParameter}'--%>
<%--						id='remember_me'--%>
<%--						<g:if test='${hasCookie}'>checked='checked'</g:if> /> <label--%>
<%--						for='remember_me'><g:message--%>
<%--							code="springSecurity.login.remember.me.label" /></label>--%>
<%--				</p>--%>
<%----%>
<%--				<p>--%>
<%--					<input type='submit' id="submit"--%>
<%--						value='${message(code: "springSecurity.login.button")}' />--%>
<%--				</p>--%>
<%--			</form>--%>
<%--		</div>--%>
<%--	</div>--%>
<%--	<script type='text/javascript'>--%>
<%--	<!----%>
<%--	(function() {--%>
<%--		document.forms['loginForm'].elements['j_username'].focus();--%>
<%--	})();--%>
<%--	// -->--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>
