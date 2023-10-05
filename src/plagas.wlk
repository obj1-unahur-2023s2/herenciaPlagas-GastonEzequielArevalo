class Plaga {
	var property poblacion
	
	method transmiteEnfermedades(){
		return poblacion >= 10
	}
}

class Cucaracha inherits Plaga{
	const property pesoPromedio
	
	method nivelDeDanio(){
		return poblacion / 2
	}
	
	override method transmiteEnfermedades(){
		return pesoPromedio >= 10 and super()
	}
}

class Pulga inherits Plaga{
	
	method nivelDeDanio(){
		return poblacion * 2
	}
}

class Garrapata inherits Pulga{
	
}

class Mosquito inherits Plaga{
	
	method nivelDeDanio(){
		return poblacion
	}
	
	override method transmiteEnfermedades(){
		return poblacion % 3 == 0 and super()
	}
}
