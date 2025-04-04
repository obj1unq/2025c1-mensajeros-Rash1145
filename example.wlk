object paquete {

  var esta_pago = false

  method esta_pago(){
    return esta_pago
  }

  method pagar_paquete(_pagar_paquete){
    esta_pago = _pagar_paquete
  }
}

object chuck_norris {

  const peso = 900

  const puede_llamar = true

  method peso(){
    return peso
  }

  method puede_llamar(){
    return puede_llamar
  }
}

object neo {

  const peso = 0
  var credito = false

  method peso(){
    return peso
  }

  method puede_llamar(){
    return credito
  }

  method cargar_credito(_credito){
    credito = _credito
  }
}

object lincoln_hawk {
  
  var hawk_peso = 60

  const puede_llamar = false

  var peso_vehiculo = 10

  method peso(){
    return hawk_peso + peso_vehiculo
  }

  method bicicleta(){
    peso_vehiculo = 10
  }

  method camion(){
    peso_vehiculo = 500
  }

  method camion_acoplado(){
    peso_vehiculo = 1000
  }

  method puede_llamar(){
    return puede_llamar
  }

  method hawk_peso(_hawk_peso) {
    hawk_peso = _hawk_peso
  }
}

object brooklyn{

  method puede_enviar (_mensajero){
    return if (paquete.esta_pago() == true and _mensajero.peso() < 1000){
    true
    } else {
    false
    }
  }
}

object matrix{

  method puede_enviar (_mensajero){
    return if (paquete.esta_pago() == true and _mensajero.puede_llamar() == true){
    true
    } else {
    false
    }
  }
}