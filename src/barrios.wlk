import elementos.*

class Barrio {
	const property elementos = []
	
	method elementoEstaEnElBarrio(unElemento){
		return elementos.contains(unElemento)
	}
	
	method elElementoEsBueno(unElemento){
		if(self.elementoEstaEnElBarrio(unElemento)){
			return unElemento.esBueno()
		}
		else{
			return "El elemento no esta en el barrio"
		}
	}
	
	method cantidadDeElementosBuenos(){
		return elementos.count({elemento => elemento.esBueno()})
	}
	
	method cantidadDeElementosMalos(){
		return elementos.count({elemento => not elemento.esBueno()})
	}
	
	method esCopado(){
		return self.cantidadDeElementosBuenos() > self.cantidadDeElementosMalos()
	}
}
