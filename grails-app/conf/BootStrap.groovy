import delivery.al.toque.login.Authority
import delivery.al.toque.login.Person
import delivery.al.toque.login.PersonAuthority


class BootStrap {

    def init = { servletContext ->
		
		def adminRole = Authority.findByAuthority('ROLE_ADMIN')
		if (!adminRole) {
			adminRole = new Authority(authority: 'ROLE_ADMIN').save(failOnError: true)
		} 
		if (!Authority.findByAuthority('ROLE_OP_NEGOCIO')) {
			new Authority(authority: 'ROLE_OP_NEGOCIO').save(failOnError: true)			
		}
		if (!Authority.findByAuthority('ROLE_OP_SUCURSAL')) {
			new Authority(authority: 'ROLE_OP_SUCURSAL').save(failOnError: true)
		}
		
		def personAuthority = PersonAuthority.findByAuthority(adminRole)
		
		if (!personAuthority) {
			def person = new Person(username: "admin",
									password: "1q2w3e4r",
									enabled: true,
									accountExpired: false,
									accountLocked: false,
									passwordExpired: false)
			
			person.setEmail("juanlopezcervero@gmail.com")
			person.save(failOnError: true)
			personAuthority = new PersonAuthority(person: person, authority: adminRole)
			personAuthority.save(failOnError: true)
		}
		
    }
	
	
	
    def destroy = {
    }
}
