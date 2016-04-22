package delivery.al.toque

import delivery.al.toque.protocol.entities.InstallationDTO;
import delivery.al.toque.protocol.entities.VerifyLinkDTO;


class VerifyController {
	
	def verifyLinkService
	def installationService
	
	def index(String token) {
		if (token != null) {
			VerifyLinkDTO verifyLinkDto = new VerifyLinkDTO()
			verifyLinkDto.setUniqueId(token)
			List<VerifyLinkDTO> result = verifyLinkService.sync(verifyLinkDto)
			if (!result.isEmpty() && result.size() == 1) {
				VerifyLinkDTO dto = result.first()
				InstallationDTO instDto = new InstallationDTO()
				instDto.setUniqueId(dto.getInstallationId())
				List<InstallationDTO> instResult = installationService.sync(instDto)
				if (!instResult.isEmpty() && instResult.size() == 1) {
					InstallationDTO instResDto = instResult.first()
					if (dto.getVerifySource().toLowerCase().equals("email")) {
						if (dto.eMail.toLowerCase().equals(instResDto.eMail.address.toLowerCase())){
							instResDto.eMail.verified = "true"
						} else {
							redirect(uri:"/site/verificationFailed.html")
						}
					} else if (dto.getVerifySource().toLowerCase().equals("sms")) {
						if (dto.mobilePhone.toLowerCase().equals(instResDto.mobilePhone.number.toLowerCase())) {
							instResDto.mobilePhone.verified = "true"
						} else {
						redirect(uri:"/site/verificationFailed.html")
						}
					}
					if ("eMail".equals(verifyLinkDto.getVerifySource())) {
						instResDto.eMail.verified = "TRUE"
					} else if ("mobilePhone".equals(verifyLinkDto.getVerifySource())) {
						instResDto.mobilePhone.verified = "TRUE"
					} else if ("sms".equals(verifyLinkDto.getVerifySource())) {
						instResDto.mobilePhone.verified = "TRUE"
					} else if ("SMS".equals(verifyLinkDto.getVerifySource())) {
						instResDto.mobilePhone.verified = "TRUE"
					}
					installationService.saveOrUpdate(instResDto)
					//verifyLinkService.delete(dto)
					redirect(uri:"/site/verified.html")
					return
				}
			}
		}
		//hubo error
		redirect(uri:"/site/verificationFailed.html")
		return
	}
	
	def testShortUrl(String token) {
		String shortUrl = verifyLinkService.getShortLink(token)
		render shortUrl
	}
}
