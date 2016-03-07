package delivery.al.toque.login


class Person {

	transient springSecurityService

	String username
	String password
	
	String fullname
	String email 
	
	
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	
	static constraints = {
		username blank: true, unique: true
		password blank: false, nullable: false
		fullname blank: true, nullable: true
		email(nullable:false, blank: false)
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Authority> getAuthorities() {
		PersonAuthority.findAllByPerson(this).collect { it.authority } as Set
	}

	def beforeInsert() {
		encodePassword()
		
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
		
	}

	def afterUpdate() {
//		if ( sucursal || negocio ) {
//			PersonAuthority personAuthority
//			if (getAuthorities().empty) {
//				personAuthority = new PersonAuthority()
//				personAuthority.setPerson(Person.get(this.id))
//			} else {
//				personAuthority = PersonAuthority.findByPerson(this)
//			}
//			Authority authority = null
//			if (sucursal) {
//				if ( !(personAuthority.authority && personAuthority.authority.authority.equals("ROLE_OP_SUCURSAL") )) {
//					authority = Authority.findByAuthority("ROLE_OP_SUCURSAL")
//				}
//			} else if (negocio) {
//			if ( !(personAuthority.authority && personAuthority.authority.authority.equals("ROLE_OP_NEGOCIO") )) {
//					authority = Authority.findByAuthority("ROLE_OP_NEGOCIO")
//				}
//			}
//			if (authority) {
//				personAuthority.setAuthority(authority)
//				personAuthority.save(flush: true, failOnError: true)
//			}
//		}
	}
	
	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
