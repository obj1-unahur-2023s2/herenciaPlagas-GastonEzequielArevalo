import plagas.*

class Elemento {
	const property plaga
}

class Hogar inherits Elemento{
	var property nivelDeMugre
	var property nivelDeConfort
	
	method esBueno(){
		return nivelDeConfort / 2 <= nivelDeMugre
	}
	
	
	method efectoDelAtaque(){
		nivelDeMugre = plaga.nivelDeDanio()
	}
	
}

class Huerta inherits Elemento{
	var property capacidadDeProduccion
	const property nivelDeProduccion
	
	method esBueno(){
		return capacidadDeProduccion > nivelDeProduccion
	}
	
	method efectoDelAtaque(){
		capacidadDeProduccion -= plaga.nivelDeDanio() / 10
		if(plaga.transmiteEnfermedades()){
			capacidadDeProduccion -= 10
		}
	}
}

class Mascota inherits Elemento{
	var property nivelDeSalud
	
	method esBueno(){
		return nivelDeSalud > 250
	}
	
	method efectoDelAtaque(){
		if(plaga.transmiteEnfermedades()){
			nivelDeSalud -= 0.max(plaga.nivelDeDanio())
		}
	}
}




