//: Playground - noun: a place where people can play

import Cocoa




enum Velocidades: Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
    
}

class Auto {
    var velocidad: Velocidades
    
    
    init(){
        self.velocidad = Velocidades.init(velocidadInicial: Velocidades.Apagado)
    }
    
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String){
        var velocidadMsg:String
        let actVelocidad:Velocidades = self.velocidad
        
        switch(self.velocidad){
        case .Apagado:
            velocidadMsg = "Apagado"
            velocidad = Velocidades(velocidadInicial:Velocidades.VelocidadBaja)
        case .VelocidadBaja:
            velocidadMsg = "Velocidad baja"
            velocidad = Velocidades(velocidadInicial:Velocidades.VelocidadMedia)
        case .VelocidadMedia:
            velocidadMsg = "Velocidad media"
            velocidad = Velocidades(velocidadInicial:Velocidades.VelocidadAlta)
        case .VelocidadAlta:
            velocidadMsg = "Velocidad alta"
            velocidad = Velocidades(velocidadInicial:Velocidades.VelocidadMedia)
        }
        return (actVelocidad.rawValue, velocidadMsg)
    }
    
}

var auto = Auto()
for i in 0...20{
    var tupla = auto.cambioDeVelocidad()
    print("\(i). \(tupla.actual), \(tupla.velocidadEnCadena)")
}


