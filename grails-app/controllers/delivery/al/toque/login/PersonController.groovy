package delivery.al.toque.login

import org.springframework.dao.DataIntegrityViolationException

class PersonController {

    static allowedMethods = [create: ['GET', 'POST'], edit: ['GET', 'POST'], delete: 'POST']

    def index() {
        redirect action: 'list', params: params
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [personInstanceList: Person.list(params), personInstanceTotal: Person.count()]
    }

    def create() {
		switch (request.method) {
		case 'GET':
        	[personInstance: new Person(params)]
			break
		case 'POST':
	        def personInstance = new Person(params)
						
			personInstance.setUsername(personInstance.email)
			
			
			
			if (!personInstance.save(flush: true)) {
	            render view: 'create', model: [personInstance: personInstance]
	            return
	        }
			
//			if (personInstance.sucursal || personInstance.negocio) {
//		        PersonAuthority personAuthority = new PersonAuthority()
//		        personAuthority.setPerson(personInstance)
//				Authority authority
//				if (personInstance.sucursal) {
//					authority = Authority.findByAuthority("ROLE_OP_SUCURSAL")
//				} else if (personInstance.negocio) {
//					authority = Authority.findByAuthority("ROLE_OP_NEGOCIO")
//				}
//				personAuthority.setAuthority(authority)
//				personAuthority.save(flush: true)	
//			}	
//			

			flash.message = message(code: 'default.created.message', args: [message(code: 'person.label', default: 'Person'), personInstance.id])
	        redirect action: 'show', id: personInstance.id
			break
		}
    }

    def show() {
        def personInstance = Person.get(params.id)
        if (!personInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), params.id])
            redirect action: 'list'
            return
        }

        [personInstance: personInstance]
    }

    def edit() {
		switch (request.method) {
		case 'GET':
	        def personInstance = Person.get(params.id)
	        if (!personInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), params.id])
	            redirect action: 'list'
	            return
	        }

	        [personInstance: personInstance]
			break
		case 'POST':
	        def personInstance = Person.get(params.id)
	        if (!personInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), params.id])
	            redirect action: 'list'
	            return
	        }

	        if (params.version) {
	            def version = params.version.toLong()
	            if (personInstance.version > version) {
	                personInstance.errors.rejectValue('version', 'default.optimistic.locking.failure',
	                          [message(code: 'person.label', default: 'Person')] as Object[],
	                          "Another user has updated this Person while you were editing")
	                render view: 'edit', model: [personInstance: personInstance]
	                return
	            }
	        }

	        personInstance.properties = params

			if (personInstance.negocio) {
				personInstance.negocio.operadoresNegocio.add(personInstance)
			}
			
			if (personInstance.sucursal) {
				personInstance.sucursal.operadoresSucursal.add(personInstance)
			}
			
	        if (!personInstance.save(flush: true)) {
	            render view: 'edit', model: [personInstance: personInstance]
	            return
	        }
			
			

			flash.message = message(code: 'default.updated.message', args: [message(code: 'person.label', default: 'Person'), personInstance.id])
	        redirect action: 'show', id: personInstance.id
			break
		}
    }

    def delete() {
        def personInstance = Person.get(params.id)
        if (!personInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), params.id])
            redirect action: 'list'
            return
        }

        try {
            personInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'person.label', default: 'Person'), params.id])
            redirect action: 'list'
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'person.label', default: 'Person'), params.id])
            redirect action: 'show', id: params.id
        }
    }
	
//	def registro() {
//		switch (request.method) {
//			case 'GET':
//				[registroInstance: new FormularioRegistro()]
//				break
//			case 'POST':
//				def registroInstance = new FormularioRegistro()
//				bindData(registroInstance, params)
//				
//				Authority authority = Authority.findByAuthority("ROLE_ADMIN")
//				PersonAuthority personAuthority = PersonAuthority.findByAuthority(authority)
//				def destinatario = personAuthority.getPerson().getEmail()
//				
//				sendMail {
//					to "${destinatario}"
//					subject "DeliveryAlToque - Pedido de registro"
//					html g.render(template:'/mail/registroMail', model:[ registroInstance: registroInstance])
//				}
//				
//	
//				flash.message = message(code: 'default.created.message', args: [message(code: 'registro.label', default: 'Registro'), personInstance.id])
//				redirect action: 'registroPedido'
//				break
//			}
//	}

}
