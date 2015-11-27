//: Playground - noun: a place where people can play

import UIKit

enum Velocidades:Int {
    case Apagado=0
    case VelocidadBaja=20
    case VelocidadMedia=50
    case VelocidadAlta=120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
    
}

class Auto {
    var velocidad: Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
        //self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad()->(actual : Int, velocidadEnCadena: String){
        var literalVelocidad:String;
        switch(self.velocidad){
            case .Apagado:
                self.velocidad = Velocidades.VelocidadBaja
                literalVelocidad = "Velocidad Baja"
            case .VelocidadBaja:
                self.velocidad = Velocidades.VelocidadMedia
                literalVelocidad = "Velocidad Media"
            case .VelocidadMedia:
                self.velocidad = Velocidades.VelocidadAlta
                literalVelocidad = "Velocidad Alta"
            case .VelocidadAlta:
                self.velocidad = Velocidades.Apagado
                literalVelocidad = "Apagado"
        }
        return (self.velocidad.rawValue, literalVelocidad)
    }
}

var auto:Auto = Auto()

var resultado:(actual: Int, velocidadEnCadena: String)
for _ in 1...20 {
    resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual) \(resultado.velocidadEnCadena)")
}


