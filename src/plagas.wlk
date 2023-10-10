import elementos.*

class Plaga {
	var property poblacion
	const property elementosQueSePuedenAtacar
	
	method transmiteEnfermedades(){
		return poblacion >= 10
	}
	method efectoDelAtaque(){
		poblacion = poblacion * 0.10
	}
	method atacarA(unElemento){
		self.efectoDelAtaque()
		unElemento.efectoDelAtaque()
	}
}

class Cucaracha inherits Plaga{
	var property pesoPromedio
	
	method nivelDeDanio(){
		return poblacion / 2
	}
	
	override method transmiteEnfermedades(){
		return pesoPromedio >= 10 and super()
	}
	
	override method efectoDelAtaque(){
		super()
		pesoPromedio = pesoPromedio + 2
	}
}

class Pulga inherits Plaga{
	
	method nivelDeDanio(){
		return poblacion * 2
	}
}

class Garrapata inherits Pulga{
	
	override method efectoDelAtaque(){
		poblacion = poblacion * 0.20
	}
}

class Mosquito inherits Plaga{
	
	method nivelDeDanio(){
		return poblacion
	}
	
	override method transmiteEnfermedades(){
		return poblacion % 3 == 0 and super()
	}
}
