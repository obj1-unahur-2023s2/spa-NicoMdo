object olivia {
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion() = gradoDeConcentracion
	
	method recibirMasajes(){
		gradoDeConcentracion += 3 
	}
	
	method discutir(){
		gradoDeConcentracion -= 1
	}
	
	method banioDeVapor(){}
}

object bruno {
	var peso = 55000
	var esFeliz = true
	var tieneSed = false
	
	method esFeliz() = esFeliz
	
	method tieneSed() = tieneSed
	
	method peso()= peso
	
	
	method recibirMasajes(){
		esFeliz = true
	}
	
	method banioDeVapor(){
		peso -= 500
		tieneSed = true	
	}
	
	method tomarAgua(){
		tieneSed = false
	}
	
	method comerFideos(){
		peso += 250
		tieneSed = true
	}
	
	method correr(){
		peso -= 300
	}
	
	method verElNoticiero(){
		esFeliz = false
	}
	
	method estaPerfecto(){
		return self.esFeliz() and not self.tieneSed() && self.peso().between(50000,70000) 
	}
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verElNoticiero()
	}
}


object ramiro {
	var nivelDeContractura
	var tienePielGrasosa = false
	
	method nivelDeContractura() = nivelDeContractura
	
	method tienePielGrasosa() = tienePielGrasosa
	
	method recibirMasajes(){
		nivelDeContractura = 0.max(nivelDeContractura - 2)
	}
	method banioDeVapor(){
		tienePielGrasosa = false
	}
	method comerBigMac(){
		tienePielGrasosa = true
	}
	method bajarALaFosa(){
		tienePielGrasosa = true
		nivelDeContractura += 1 
	} 
	method jugarAlPaddle(){
		nivelDeContractura += 3
	}
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}