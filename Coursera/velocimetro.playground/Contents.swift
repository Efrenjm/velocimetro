//: Playground - noun: a place where people can play

import UIKit
enum Velocidades : Int {
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    init(velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    init( ) {
        self.velocidad = Velocidades.apagado
    }
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        var Actual : Int = velocidad.rawValue
        var VelocidadEnCadena : String = "Apagado"
        if velocidad.rawValue == 0  {
            Actual = velocidad.rawValue
            VelocidadEnCadena = "Apagado"
            velocidad = Velocidades.velocidadBaja
        } else if velocidad.rawValue == 20  {
            Actual = velocidad.rawValue
            VelocidadEnCadena = "Velocidad Baja"
            velocidad = Velocidades.velocidadMedia
        } else if velocidad.rawValue == 50  {
            Actual = velocidad.rawValue
            VelocidadEnCadena = "Velocidad Media"
            velocidad = Velocidades.velocidadAlta
        } else if velocidad.rawValue == 120  {
            Actual = velocidad.rawValue
            VelocidadEnCadena = "Velocidad Alta"
            velocidad = Velocidades.velocidadMedia
        }
        let resultado = (Actual, VelocidadEnCadena)
        return resultado
    }
}
var automovil = Auto ( )
for _ in 0...20{
    let velo = automovil.cambioDeVelocidad()
    print ("\(velo.actual) \(velo.velocidadEnCadena)")
}

