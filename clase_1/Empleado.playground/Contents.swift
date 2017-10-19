//: Playground - noun: a place where people can play

import UIKit

class Empleado{
    var nombre: String
    var sueldo: Double{
        get{
            return self.sueldo
        }
        
        set(nuevoSalario){
            self.sueldo = nuevoSalario
        }
    }
    
    init( ){
        self.nombre = ""
        self.sueldo = 0
    }
}

let godin = Empleado( )

//godin.sueldo = 3000
print(godin.sueldo)
