class Castillo{
	const moradores = []
	var property estabilidad = 200
	const estabilidadMinima = 50 
	var resistencia = 0
	const tamanioMuralla 
	const ambientes = []
		
	method agregarMorador(s){
		moradores.add(s)
	} 
	
	method agregarAmbiente(a){
		ambientes.add(a)
	}
	
	method derrotado(){
		return estabilidad < 100
	}

	method aumentarResistencia(r){
		resistencia += r
	}
	method muchoTemor(){
		return moradores.count{s=>s.panico()} > moradores.size()/2
	}
	
	method aumentarEstabilidad(e){
		estabilidad += e
	}
	
	method bajoAmenaza(){
		return estabilidad <= estabilidadMinima*0.25 and !self.muchoTemor()
	}
	
	method sumaDePerimetros(){
		return ambientes.sum{c=>c.perimetro()}
	}
	
	method prepararDefensas(){
		moradores.forEach{s=>s.prepararDefensaDe(self)} //agregar castillo como parametro
	}
	method perdidaEstabilidad(){
		return tamanioMuralla - self.sumaDePerimetros() - resistencia
	}
	
	method recibirAtaque(){
		estabilidad -= self.perdidaEstabilidad()
		moradores.forEach{s=>s.recibirAtaque()}	
	}
	
	method realizarFiesta(){
		if (!self.bajoAmenaza()){
			self.aumentarEstabilidad(30)
			moradores.forEach{s=>s.irALaFiesta()}
		}
	}
}

class Guardia{
		var capacidad = 10
		var agotamiento = 0
		
		method prepararDefensaDe(castillo){ 
			castillo.aumentarEstabilidad(capacidad/10)
			capacidad += 1
		}
		
		method agotamiento()=agotamiento
		
		method capacidad(){
			return capacidad
		}
		
		method irALaFiesta(){
			agotamiento -= 10
		}

		method recibirAtaque(){
			agotamiento +=50
		}
		method panico() = false

}

class Burocrata{
	const fechaNacimiento
	var aniosExperiencia
	var panico = false
	
	method efectoPorLaFiesta(){
		panico = false
	}

	method prepararDefensaDe(castillo){
		if(!panico)
			 castillo.aumentarResistencia(10) 
	}
	
	method capacidad(){
		return 0
	}
	
	method efectoDeRecibirAtaque(){
		if (fechaNacimiento > 1840 or aniosExperiencia < 5)
			panico = true
	}
}

object todoCastillos{
    const castillos = []
        
    method agregarCastillos(castillo){
        castillos.add(castillo)
    }
    
    method castillosEnPie() = castillos.filter({castillo => not castillo.derrotado()})
   	
	method menorEstabilidad(){
		return self.castillosEnPie().min{ce=>ce.estabilidad()}
	}
}	

class Rey{
	const castillo
	
	method realizarFiesta(){
		castillo.realizarFiesta()
	}
	
	method castillo() = castillo

	method atacar(){
		todoCastillos.menorEstabilidad().recibirAtaque()
	}
}

class Ambiente{
	const perimetro
	
	method perimetro(){
		return perimetro
	}
}