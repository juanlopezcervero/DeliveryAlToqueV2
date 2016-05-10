function EntityProtocol() {
	
	var that = this;
	
	this.serverUrl = '';
	this.lastToken = this.getLastReceivedToken();
	this.timestamp = this.getLastReceivedTimeStamp();
	this.packetId = 0;
	this.entityProcessorList = [];
	
	this.initialize = function (server, entities) {
		this.serverUrl = server;
		this.entityProcessorList = entities;
	};
	
	this.setCallbacks = function (entities) {
		this.entityProcessorList = entities;
	}
	
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
	
	this.getNodeText = function (xmlData, tagName) {
		var nodes = xmlData.getElementsByTagName(tagName);
		if (nodes.length > 0) {
			var node = nodes[0];
			var nodeText = node.textContent || node.text;
			return nodeText;			
		}
		return "";
	};
	
	this.processResponse = function (response, context) {
		var xmlData = response.responseText;
		var xmlPacket = $.parseXML(xmlData);
		
		that.lastToken = that.getNodeText(xmlPacket, "token");
		that.timestamp = that.getNodeText(xmlPacket, "timeStamp");
		sessionStorage.setItem("lastToken", that.lastToken);
		sessionStorage.setItem("lastTimeStamp", that.timestamp);
		
		if (that.entityProcessorList.processors.length > 0) {
			for (var i = 0; i < that.entityProcessorList.processors.length; i++) {
				var entityProcessor = that.entityProcessorList.processors[i];
				var tagname = entityProcessor.entity;
				var processor = entityProcessor.processor;
				
				var entities = xmlPacket.getElementsByTagName(tagname);
				if (entities.length > 0) {
					processor(entities);
				}
			}
		}
		
	};
	
	
	
	this.getPacketFor = function (syncEntities) {
		var packetId = this.generateId();
		var token = this.generateToken();
		var timeStamp = this.generateTimeStamp(); //2014-10-21T16:14:18.00-0300
		var lastReceivedToken = this.getLastReceivedToken();
		var lastReceivedTimeStamp = this.getLastReceivedTimeStamp(); //2014-10-21T16:14:18.00-0300
		var installation = this.getInstallation();
		var content = "";
		
		if (installation != "") {
			var installationXml = $.parseXML(installation);
			content += "<installationData>" +
							"<uniqueId>" + this.getNodeText(installationXml, "uniqueId") + "</uniqueId>" +
							"<count>" + this.getNodeText(installationXml, "installCount") + "</count>" +
						"</installationData>";
		}
		
		if (syncEntities != "") {
			content += "<sync>"
			for (var i = 0; i < syncEntities.length; i++) {
				content += syncEntities[i];
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
		this.packetId++;
		return this.packetId;
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
		return date.getFullYear() + '-' + this.padNumber2(date.getMonth()) + '-' + this.padNumber2(date.getDate()) +
				"T" + 
				this.padNumber2(date.getHours()) + ":" + this.padNumber2(date.getMinutes()) + ":" + this.padNumber2(date.getSeconds()) +
				"." + this.padNumber3(date.getMilliseconds()) +
				this.getTimezone(date.getTimezoneOffset());
	};
	
	this.getTimezone = function (tzOffset) {
		var formatedTZ = "";
		var minutesOffset = tzOffset % 60;
		var hoursOffset = (tzOffset - minutesOffset) / 60;
		
		if (hoursOffset > 0) {
			formatedTZ += "-";
		} else {
			formatedTZ += "+";
		}
		
		formatedTZ += this.padNumber2(hoursOffset) + this.padNumber2(minutesOffset);
		
		return formatedTZ;
	};
	
	this.padNumber2 = function (number) {
		if (parseInt(number) > 9) {
			return "" + number;
		}
		return "0" + number;
	};
	
	this.padNumber3 = function (number) {
		var number = this.padNumber2(number);
		if (parseInt(number) > 99) {
			return number;
		}
		return "0" + number;
	};
	
	this.generateTimeStamp = function () {
		return this.formatDate(new Date());
	};
	
	this.generateTimeStampForDate = function (date) {
		return this.formatDate(date);
	};
	
	this.getLastReceivedToken = function () {
		var lastToken = sessionStorage.getItem("lastToken");
		if (lastToken) {
			return lastToken;
		}
		return "";
	};
	
	this.getLastReceivedTimeStamp = function () {
		var lastTimestamp = sessionStorage.getItem("lastTimeStamp");
		if (lastTimestamp) {
			return lastTimestamp;
		}
		return "";
	};
	
	this.getInstallation = function () {
		return localStorage.getItem("datoqueInstallation");
	};
	
	this.getSyncEntityParameters = function(timestamp) {
		return "<timeStamp>" + timestamp + "</timeStamp>";//TODO
	}
}