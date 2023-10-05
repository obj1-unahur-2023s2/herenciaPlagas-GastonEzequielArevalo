class Hogar{
	var property nivelDeMugre
	var property nivelDeConfort
	
	method esBueno(){
		return nivelDeConfort / 2 <= nivelDeMugre
	}
	
}

class Huerta{
	var property capacidadDeProduccion
	const property nivel
	
	method esBueno(){
		return capacidadDeProduccion > nivel
	}
}

class Mascota{
	var property nivelDeSalud
	
	method esBueno(){
		return nivelDeSalud > 250
	}
}




