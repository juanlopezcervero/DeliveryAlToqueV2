function EntityProtocol() {
	
	this.serverUrl = '';
	this.lastToken = '';
	this.timestamp = '';
	this.packetId = 0;
	this.entityProcessorList = [];
	
	this.initialize = function (server, entities) {
		this.serverUrl = server;
		this.entityProcessorList = entities;
	};
	
	this.bindFormData = function (formElement, element) {
		var attributes = formElement.find("input[type='hidden']");
		
	};
	
	this.sync = function (entities) {
		var packet = this.getPacketFor(entities);
		$.ajax({
			url: this.serverUrl,
			type: "POST",
			dataType: "xml",
			timeOut: 20000,
			data: packet,
			complete: this.processResponse,
			contentType: "text/xml"
		});
		
	};
	
	this.processResponse = function (response, context) {
		var xmlData = response.responseText;
		var xmlPacket = $.parseXML(xmlData);
		
		this.lastToken = getNodeText(xmlPacket, "token");
		this.timestamp = getNodeText(xmlPacket, "timeStamp");
		
		if (entityProcessorList.processors.length > 0) {
			for (var i = 0; i < entityProcessorList.length; i++) {
				var entityProcessor = entityProcessor[i];
				var tagname = entityProcessor.entity;
				var processor = entityProcessor.processor;
				
				var entities = xmlPacket.getElementsByTagName(tagname);
				if (entities.length > 0) {
					processor(entities);
				}
			}
		}
		
	};
	
	this.getNodeText = function (xmlData, tagName) {
		var nodes = xmlData.getElementsByTagName(tagName);
		if (nodes.length > 0) {
			var node = nodes[0];
			var nodeText = node.textContent || node.text;
			return nodeText;			
		}
		return "";
	};
	
	this.getPacketFor = function (syncEntities) {
		var packetId = generateId();
		var token = generateToken();
		var timeStamp = generateTimeStamp(); //2014-10-21T16:14:18.00-0300
		var lastReceivedToken = getLastReceivedToken();
		var lastReceivedTimeStamp = getLastReceivedTimeStamp(); //2014-10-21T16:14:18.00-0300
		var installation = getInstallation();
		var content = "";
		
		if (installation != "") {
			var installationXml = $.parseXML(installation);
			content += "<installationData>" +
							"<uniqueId>" + getNodeText(installationXml, "uniqueId") + "</uniqueId>" +
							"<count>" + getNodeText(installationXml, "installCount") + "</count>" +
						"</installationData>";
		}
		
		if (syncEntities != "") {
			content += "<sync>"
			for (var i = 0; i < syncEntities.length; i++) {
				content += syncEntitites[i];
			}
			content += "</sync>"
		}
		
		var packetTemplate = "<packet>" +
		   						"<language>es</language>" +
		   						"<id>" + packetId + "</id>" +
		   						"<token>" + token + "</token>" +
		   						"<timeStamp>" + timeStamp + "</timeStamp>" +
		   						"<lastReceivedPacket>" +
		      						"<token>" + lastReceivedToken + "</token>" +
		      						"<timeStamp>" + lastReceivedTimeStamp + "</timeStamp>" +
		   						"</lastReceivedPacket>" +
		   						content +
	   						 "</packet>";
		return packetTemplate;
	};
	
	this.generateId = function () {
		packetId++;
		return packetId;
	};
	
	this.generateToken = function () {
		var text = "";
	    var possible = "0123456789ABCDEF";

	    for( var i=0; i < 16; i++ )
	        text += possible.charAt(Math.floor(Math.random() * possible.length));

	    return text;
	};
	
	this.formatDate = function (date) {
		// yyyy-MM-dd'T'HH:mm:ss.SSSZ
		return date.getFullYear() + '-' + padNumber2(date.getMonth()) + '-' + padNumber2(date.getDate()) +
				"T" + 
				padNumber2(date.getHours()) + ":" + padNumber2(date.getMinutes()) + ":" + padNumber2(date.getSeconds())
				"." + padNumber3(date.getMilliseconds()) +
				getTimezone(date.getTimezoneOffset());
	};
	
	this.getTimezone = function (tzOffset) {
		var formatedTZ = "";
		var minutesOffset = tzOffset % 60;
		var hoursOffset = (tzOffset - minutesOffset) / 60;
		
		if (hoursOffset < 0) {
			formatedTZ += "-";
			hoursOffset = hoursOffset * -1;
		}
		
		formatedTZ += padNumber2(hoursOffset) + padNumber2(minutesOffset);
		
		return formatedTZ;
	};
	
	this.padNumber2 = function (number) {
		if (parseInt(number) > 9) {
			return "" + number;
		}
		return "0" + number;
	};
	
	this.padNumber3 = function (number) {
		var number = padNumber2(number);
		if (parseInt(number) > 99) {
			return number;
		}
		return "0" + number;
	};
	
	this.generateTimeStamp = function () {
		return formatDate(new Date());
	};
	
	this.generateTimeStamp = function () {
		return formatDate(new Date());
	};
	
	this.generateTimeStampForDate = function (date) {
		return formatDate(date);
	};
	
	this.getLastReceivedToken = function () {
		return lastToken;
	};
	
	this.getLastReceivedTimeStamp = function () {
		return timestamp;
	};
	
	this.getInstallation = function () {
		return localStorage.getItem("datoqueInstallation");
	};
	
	this.getSyncEntityParameters = function(timestamp) {
		return "<timeStamp>" + timestamp + "</timeStamp>";//TODO
	}
}