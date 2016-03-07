<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap"/>
		<title>Delivery al toque en ...</title>
		
		<script src="${resource(dir: 'js', file: 'delivery/jquery.maphilight.min.js')}"></script>
		
	</head>

	
	<body>
		<div class="worldMapContainer">
			<p class="nav-header">Elija un pa&iacute;s...</p>

			<img class="map" src="${resource(dir: 'images', file: 'delivery/demo_world.png')}" width="800" usemap="#world">		
			
			
		</div>
		
		<script type="text/javascript">
		$(function() {
			$.get("${createLink(controller: 'mapFile', action: 'htmlFile')}", function (data) {
				var xmlText = new XMLSerializer().serializeToString(data);
                $(".worldMapContainer").append(xmlText);
				$('.map').maphilight({fade: false});
            });
		});
		</script>
	</body>
</html>
