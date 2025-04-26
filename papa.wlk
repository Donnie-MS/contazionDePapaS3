
object papa {
    var cantidadCosechadaActual = 0
    var calidadActual = buena
    method calidad() {
        return calidadActual
    }
    method cambiarCalidad(nuevaCalidad) {
        calidadActual = nuevaCalidad
    }
    method cantidadDeCosecha() {
        return cantidadCosechadaActual
    }
    method cambiarCntCosechada(unNumero) {
        cantidadCosechadaActual = unNumero
    }
    method importe() {
        return self.costoDeProduccion() + self.impuesto() + self.derechos()
    }
    method impuesto() {
        return impuestos.simple(self) + impuestos.garantia(self) 
    }
    method costoDeProduccion() {
        return self.calidad() + self.cantidadDeCosecha()
    }
    method derechos() {
        return derechosDeExportacion.Demagogico()
    }
}
object derechosDeExportacion {
    var montoDemagogicoActual = 100
    method estatista(unProducto) {
        if(unProducto.costoDeProduccion() > 1000) {
            return 200
        }
        else {
            return 300
        }
    }
    method privatizador(unProducto) {
        var monto = 50
        monto += unProducto.cantidadDeCosecha() / 10
        return monto
    }
    method Demagogico() {
        return montoDemagogicoActual
    }
    method cambiarMontoDemagogico(unMonto) {
        montoDemagogicoActual = unMonto
    }
    method nulo() {
        return 0
    }
}
object impuestos {
    method simple(unProducto) {
        return unProducto.costoDeProduccion() * 0.10
    }
    method garantia(unProducto) {
        return (unProducto.costoDeProduccion() * 0.05).max(100)
    }
    method inventada(unProducto) {

    }
}
//Calidades
object buena {

}
object regular {

}
object premium {

}
object batata {
    var costoDeProduccionActual = 10
    method cambiarCostoDeProduccion(nuevoCosto) {
        costoDeProduccionActual = nuevoCosto
    }
    method costoDeProduccion() {
        return costoDeProduccionActual
    }
    method importe() {
        return self.costoDeProduccion()
    }
    method impuesto() {
        return impuestos.simple(self) + impuestos.garantia(self)
    }
}

object zapallo {
    var cantidadCosechadaActual = 0
    method cambiarCntCosechada(unNumero) {
        cantidadCosechadaActual = unNumero
    }
    method cantidadCosechada() {
        return cantidadCosechadaActual
    }
    method costoDeProduccion() {
        return cantidadCosechada + cotizacionDePepe + (derechosDeExportacion() / 2) 
    }
}