object alambiqueVeloz {
    var property tieneSuficienteCombustible = true
    var property esRapido = false
    method puedeViajar(unaCiudad) = unaCiudad.restriccion()
    method consecuencias() {tieneSuficienteCombustible=false}
}

object espantamovil {
    var property espectro = dragon
    method tieneSuficienteCombustible() = espectro.energiaEspectral()>100
    method esRapido() = espectro.velocidad() >= 15
    method puedeViajar(unaCiudad) = unaCiudad.restriccion()
    method consecuencias() {espectro.siguienteEspectro()}
}

object dragon {
    var property velocidad = 10 
    method energiaEspectral() = 150
    method siguienteEspectro() = fantasma
}

object fantasma {
    var property velocidad = 20
    method energiaEspectral() = 60
    method siguienteEspectro() = dragon
}

object stukaRakuda {
    var property tieneSuficienteCombustible = false
    method esRapido() = not ametralladoraCargada
    var ametralladoraCargada = false
    method cargarAmetralladora() {
        ametralladoraCargada = true
    }
    method descargarAmetralladora(){
        ametralladoraCargada = false
    }
    method puedeViajar(unaCiudad) = unaCiudad.restriccion()
    method consecuencias() {self.descargarAmetralladora()}
}

object antiguaBlindada {
    method tieneSuficienteCombustible() = true
    var cantidadGangsters = 7
    method esRapido(){
        return not cantidadGangsters.between(3, 7)
    }
    method puedeViajar(unaCiudad) = unaCiudad.restriccion()
    method consecuencias() {cantidadGangsters = 0.max(cantidadGangsters-2)}
}