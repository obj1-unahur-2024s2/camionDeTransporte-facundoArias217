object camion {
    const carga = []

    method cargar(algo) {carga.add(algo)}
    method descargar(algo) {carga.remove(algo)}
    method cargarVariasCosas(unLista) {carga.adAll(unLista)}
    // cargaTotal() = carga.sum({e => e.peso()})
    method pesoTotal() = 1000 + carga.sum({e => e.peso()}) // + self.cargaTotal()
    method pesoDeLaCarga() = carga.map({e => e.peso()})
    method todoPesoImpar() = self.pesoDeLaCarga().all({e => e.odd()})
    method algoPeso(unValor) = carga.any({e => e.peso() == unValor})
    method cosaConPeligrosidad(nivel) =
        carga.find({e => e.peligrosidad() == nivel})
    method cosasQueSuperanPeligrosidad(nivel) =
        carga.filter({e=> e.peligrosidad() > nivel}) 
    method cosasMasPeligrosasQue(unaCosa) =
        carga.filter({e=> e.peligrosidad() > unaCosa.peligrosidad()})
    method excedidodMaximoPeso() =
        self.pesoTotal() > 2500
    method puedeCircularEnRuta(unValor) =
        !self.excedidodMaximoPeso() && self.cosasQueSuperanPeligrosidad(unValor).isEmpty()
    method tieneAlgoQuePesaEntre(min, max) =
        carga.any({e=> e.peso().between(min, max)})
    method cosasMasPesada() =
        carga.max({e=> e.peso()})
}