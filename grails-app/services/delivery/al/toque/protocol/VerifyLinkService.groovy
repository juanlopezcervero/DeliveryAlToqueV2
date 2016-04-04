package delivery.al.toque.protocol

import grails.orm.HibernateCriteriaBuilder
import groovyx.net.http.ContentType;
import groovyx.net.http.HTTPBuilder
import groovyx.net.http.Method;
import delivery.al.toque.VerifyLink
import delivery.al.toque.protocol.entities.VerifyLinkDTO

class VerifyLinkService extends EntityService<VerifyLinkDTO, VerifyLink> {

	def grailsApplication
	
	@Override
	public Class getDtoClass() {
		return VerifyLinkDTO.class
	}

	@Override
	public Class getEntityClass() {
		return VerifyLink.class
	}
	

	@Override
	public HibernateCriteriaBuilder getEntityCriteria() {
		return VerifyLink.createCriteria();
	}
	
	@Override
	protected ValidationResult saveOrUpdateValidation(VerifyLink entity) {
		// TODO execute AppUser validation
		return super.saveOrUpdateValidation(entity);
	}
	
	
	@Override
	public Object setAutomaticFieldValues(VerifyLink entity) {
		//genero el link corto con google y lo asigno al atributo link
		
		String link = getShortLink(entity.uniqueId)
		
		entity.link = link
		
		return entity;
	}
	
	@Override
	public EntityDTO getNewDto() {
		return new VerifyLinkDTO();
	}
	
	public getShortLink(String token) {
		//URL-SHORTENER
		String url = grailsApplication.config.baseUrl + "/verify?token=" + token
		
		String shortUrl = null
		
		String baseUrl = "https://www.googleapis.com"
		String path = "/urlshortener/v1/url"
		String apiKey = grailsApplication.config.url.shortener.key
		
		String httpRespone = null
		
		
		def http = new HTTPBuilder(baseUrl)
		http.request(Method.POST) {
			uri.path = path
			uri.query = [ key: apiKey ]
			requestContentType = ContentType.JSON
			headers.'User-Agent' = 'Mozilla/5.0 Ubuntu/8.10 Firefox/3.0.4'
			body = "{ \"longUrl\" : \"${url}\" }"
			// response handler for a success response code
			response.success = { resp, json ->
				println "response status: ${resp.statusLine}"
				println 'Headers: -----------'
				resp.headers.each { h ->
					println " ${h.name} : ${h.value}"
				}

				httpRespone = json

				println 'Response data: -----'
				println httpRespone
				println '--------------------'
				
				
				shortUrl = 	json.id.toString()
				println shortUrl
			
			}
			response.failure = { failresp_inner ->
				def failresp = failresp_inner
				println failresp
			}
		}
		
		return shortUrl
	}
	
}
