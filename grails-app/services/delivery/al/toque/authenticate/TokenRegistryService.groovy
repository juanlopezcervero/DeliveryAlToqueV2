package delivery.al.toque.authenticate

import org.apache.commons.lang.RandomStringUtils;

import delivery.al.toque.DozerMapper;
import delivery.al.toque.Installation;
import delivery.al.toque.protocol.entities.InstallationDTO;

class TokenRegistryService {

	public String generateTokenForSession(String sessionId) {
		String token = RandomStringUtils.random(32, "0123456789ABCDEF")
		TokenRegistry tokenRegistry = TokenRegistry.findBySessionId(sessionId)
		if (!tokenRegistry) {
			tokenRegistry = new TokenRegistry()
			tokenRegistry.setSessionId(sessionId)
		}
		tokenRegistry.setToken(token)
		tokenRegistry.setVerified(Boolean.FALSE)
		if (!tokenRegistry.save(flush: true)) {
			return null
		} else {
			return token
		}
	}
	
	public String verifyToken(String token, String installationUniqueId, String tokenExpirationTime) {
		TokenRegistry tokenRegistry = TokenRegistry.findByToken(token)
		if (tokenRegistry) {
			if (checkExpirationTime(tokenRegistry,tokenExpirationTime)) {
				tokenRegistry.setVerified(Boolean.TRUE)
				tokenRegistry.setInstallationUniqueId(installationUniqueId)
				if (!tokenRegistry.save(flush: true)) {
					return "Error updating registry"
				} else {
					return null
				}
			} else {
				return "Token expired"
			}
		} else {
			return "Invalid token"
		}
	}
	
	private Boolean checkExpirationTime(TokenRegistry tokenRegistry, String tokenExpirationTime) {
		Long time = new Date().getTime()
		Long expiration = Long.valueOf(tokenExpirationTime) * 1000
		Long expirationTime = tokenRegistry.getLastUpdated().getTime() + expiration
		if (time >= expirationTime) {
			return Boolean.FALSE
		}
		return Boolean.TRUE
	}
	
	public InstallationDTO consumeToken(String token) {
		TokenRegistry tokenRegistry = TokenRegistry.findByToken(token)
		if (tokenRegistry) {
			if (tokenRegistry.getVerified()) {
				if (tokenRegistry.getInstallationUniqueId()) {
					Installation installation = Installation.findByUniqueId(tokenRegistry.getInstallationUniqueId())
					if (installation) {
						InstallationDTO installationDto = DozerMapper.getInstance().map(installation, InstallationDTO.class)
						//tokenRegistry.delete(flush: true)
						return installationDto
					}
				}
			}
		}
		return null
	}
}
