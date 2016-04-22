package delivery.al.toque

import delivery.al.toque.protocol.entities.InstallationDTO;


class AuthenticateController {
	
	def tokenRegistryService
	
	def byQR() {
		
		switch (request.method) {
			case 'GET':
				String token = tokenRegistryService.generateTokenForSession(request.getSession().getId())
				String tokenExpirationTime = grailsApplication.config.token.expiration.time
				render "<token><value>${token}</value><expirationTime>${tokenExpirationTime}</expirationTime></token>"
				return;
				break
			case 'POST':
				def xmlData = request.XML
				String installationUniqueId = xmlData.installation?.uniqueId?.toString()
				String token = xmlData.token?.toString()
				String tokenExpirationTime = grailsApplication.config.token.expiration.time
				String message = tokenRegistryService.verifyToken(token, installationUniqueId, tokenExpirationTime)
				if (message) {
					render "<error><message>${message}</messsage></error>"
					return
				}
				render "<success/>"
				return;
				break;
			return
		}
	}
	
	def checkVerified(String token) {
		InstallationDTO installationDto = tokenRegistryService.consumeToken(token)
		if (installationDto) {
			render XStreamConverter.getInstance().toXML(installationDto)
		} else {
			render "<failure><message>Cannot consume token</message></failure>"
		}
		return;
	}
	
}
