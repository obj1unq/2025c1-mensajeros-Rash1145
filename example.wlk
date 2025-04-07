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

  method puede_enviar_brooklyn() {
    return (paquete.esta_pago() and self.peso() < 1000)
  }

  method puede_enviar_matrix(){
    return (paquete.esta_pago() and self.puede_llamar())
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

  method puede_enviar_brooklyn() {
    return (paquete.esta_pago() and self.peso() < 1000)
  }

  method puede_enviar_matrix(){
    return (paquete.esta_pago() and self.puede_llamar())
  }
}

object lincoln_hawk {
  
  var hawk_peso = 60

  const puede_llamar = false

  var vehiculo = bicicleta

  method peso(){
    return (hawk_peso + self.peso_vehiculo())
  }

  method cambiar_vehiculo(_vehiculo){
    vehiculo = _vehiculo
  }

  method vehiculo(){
    return vehiculo
  }

  method peso_vehiculo() {
    return vehiculo.peso()
  }

  method puede_llamar(){
    return puede_llamar
  }

  method hawk_peso(_hawk_peso) {
    hawk_peso = _hawk_peso
  }

  method puede_enviar_brooklyn() {
    return (paquete.esta_pago() and self.peso() < 1000)
  }

  method puede_enviar_matrix(){
    return (paquete.esta_pago() and self.puede_llamar())
  }
}

object bicicleta{

  const peso = 10

  method peso() {
    return peso
  }
}

object camion{

  var peso = 500

  method camion_acoplado(){
    peso = 1000
  }

  method camion_desacoplado() {
    peso = 500
  }

  method peso() {
    return peso
  }
}