

class GetPedidosResponseMailRoute {
	
	
	
    def configure = {
		
		from("imaps://imap.gmail.com?username=" + "pedidosdeliveryaltoque@gmail.com"
			+ "&password=" + "iszsussvvnevvquq"
			+ "&folderName=PEDIDOS"
			+ "&consumer.delay=" + "30")
		.filter {
			it.in.headers.subject.contains('Pedido')
		}
		.to("bean:pedidosService?methodName=processPedidoMail")
	}
	
	
}
