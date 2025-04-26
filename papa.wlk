
object papa {
    var cantidadCosechadaActual = 0
    var calidadActual = buena
    var impuestoActual = simple
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
        return impuestoActual.cotizacion(self)
    }
    method cambiarImpuesto(impuesto) {
        impuestoActual = impuesto
    }
    method costoDeProduccion() {
        return self.calidad().precioUnitario() * self.cantidadDeCosecha()
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
//impuestos

object simple {
    method cotizacion(unProducto) {
        return unProducto.costoDeProduccion() * 0.10
    }
}
object garantia {
    method cotizacion(unProducto) {
        return (unProducto.costoDeProduccion() * 0.05).max(100)
    }
}
object inventada {
    method cotizacion(unProducto) {
        return 0
    }
}

//Pepe
object pepe {
    var pepeActual = 0
    method importe() = pepeActual
    method actualizarPepe(numero) {
        pepeActual = numero
    }
}
//Calidades
object buena {
    method precioUnitario() {
        return 3
    }
}
object regular {
    method precioUnitario() {
        return pepe.importe()
    }
}
object premium {
    method precioUnitario() = buena.precioUnitario() * 1.5
}
object batata {
    var costoDeProduccionActual = 10
    var impuestoActual = simple
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
        return impuestoActual.cotizacion(self)
    }
    method cambiarImpuesto(impuesto) {
        impuestoActual = impuesto
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
        return self.cantidadCosechada() + pepe.importe() + (derechosDeExportacion() / 2) 
    }
}