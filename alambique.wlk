import vehiculos.*
import ciudades.*
object luke {
    var property vehiculo = alambiqueVeloz
    var property ultimoRecuerdo = ciudadNulleable.recuerdo()
    method viajarA(unaCiudad){
        if(vehiculo.puedeViajar(unaCiudad))
            ultimoRecuerdo = unaCiudad.recuerdo()
            vehiculo.consecuencias()
    }
}