import alambique.*
object paris{
    method recuerdo() = "torreEifel"
    method restriccion() = luke.vehiculo().tieneSuficienteCombustible()
}

object buenosAires{
    var presidente = macri
    method cambiarPresidente(unPresidente){
        presidente = unPresidente
    }
    method recuerdo() = presidente.mate()
    method restriccion() = luke.vehiculo().esRapido()
}

object macri {
    method mate() = "mateSinYerba"
}

object menem {
    method mate() = "mateConYerba"
}

object bagdad{
    var recuerdo = "bidonConPetroleo"
    method cambiarRecuerdo(unRecuerdo){
        recuerdo = unRecuerdo.recuerdo()
    }
    method recuerdo() = recuerdo
    method restriccion() = true
}

object bidonConPetroleo {
    method recuerdo() = "bidonConPetroleo"
}

object armasDeDestruccion {
    method armasDeDestruccion() = "armasDeDestruccion"
}

object lasVegas {
    var property conmemoracion = buenosAires
    method cambiarConmemoracion(unaCiudad){
        conmemoracion = unaCiudad
    }
    method recuerdo() = conmemoracion.recuerdo()
    method restriccion() = conmemoracion.restriccion()
}

object ciudadNulleable {
    method recuerdo(){}
    method restriccion() = true
}