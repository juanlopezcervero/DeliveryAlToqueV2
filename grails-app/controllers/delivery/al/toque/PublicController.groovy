package delivery.al.toque

class PublicController {

    def whatis() {
		render(view: "whatis")
	}
	
	def howtouseit() {
		render(view: "howtouseit")
	}
	
	def datoqueen() {
		render(view: "datoqueen")
	}
	
	def datoqueenZona(String pais) {
				
		[negocioList: Negocio.findAllByPais(pais), pais: pais]
	}
	
}
