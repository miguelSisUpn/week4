//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial : Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int , velocidadEnCadena : String ) {
        
        var velocidadEnCadena = ""
        
        switch velocidad{
            
        case .Apagado :
            self.velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Apagado"
            
        case .VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Baja"
            
        case .VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad Medis"
            
        case .VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Alta"
        }
        
        return ( self.velocidad.rawValue , velocidadEnCadena )
    }
}

var auto = Auto()

for i in 0 ... 19 {
    var tupla = auto.cambioDeVelocidad()
    print(" \(tupla.actual) , \(tupla.velocidadEnCadena)")
}
