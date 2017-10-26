//: Playground - noun: a place where people can play

import UIKit

protocol Saltable{
    var fuerza: Int { get }
}

extension Saltable{
    func saltar( ) -> Int{
        return self.fuerza * 10
    }
}

class Alumno: Saltable{
    //Como fuerza no es una extensión se debe de implementar
    var fuerza: Int = 10
    
    func seEspañol( ){
        print("Se español")
    }
}

extension Int{
    func cuadrado( ) -> Int{
        return self * self
    }
}

//Concepto de extensión
//Evita que sea obligatorio implementar la funcion, las hijas ya las tienen implementadas
extension Alumno{
    func seMatematicas( ){
        print("Sé matemáticas")
    }
}

let paw = Alumno( )
var numero: Int

paw.seMatematicas( )
print("Salte \(paw.saltar( )) unidades")

numero = 2
print(numero.cuadrado( ))
