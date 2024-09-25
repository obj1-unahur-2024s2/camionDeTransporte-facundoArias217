object knigthRider {
    
    method peso() = 500
    method peligrosidad() = 10
}
object bumblebee {
    var modoAuto = true
    method peso() = 800
    method peligrosidad() = if(modoAuto) 15 else 30
    method transformarEnAuto() {modoAuto = true}
    method transformarEnRobot() {modoAuto = true}
    method estaEnModoAuto() = modoAuto
}
object ladrillos {
    var property cantidad = 0
    method peso() = cantidad * 2
    method peligrosidad() = 2
}
object arena {
    var property peso = 0
    method peligrosidad() = 1 
}
object bateriaAntiaerea {
    var property estaConMisiles = false
    method peso() = if(estaConMisiles) 300 else 200
    method peligrosidad() = if(estaConMisiles) 100 else 0    
}
object contenedor {
    const cosas = []
    method agregarCosa(unaCosa) {cosas.add(unaCosa)}
    method quitarCosa(unaCosa) {cosas.remove(unaCosa)}
    method agregarVariasCosas(listaDeCosas) {cosas.addAll(listaDeCosas)}
    method peso() = 100 + cosas.sum({e => e.peso()})
    method peligrosidad() =
        if(cosas.isEmpty()) 0 else cosas.max({e=> e.peligrosidad()}).peligrosidad()
        // si no le pongoo el ult .peligrosidad, devuelve unicamente el elemento. pero asi
        // devuelve la peligrosidad de ese elemento
}   
   
object residuosRadiactivos {
    var property peso = 0
    method peligrosidad() = 200 
}
object embalaje {
    var property cosaEnvuelta = null
    method peso() = cosaEnvuelta.peso()
    method peligrosidad() = cosaEnvuelta.peligrosidad() * 0.5

}