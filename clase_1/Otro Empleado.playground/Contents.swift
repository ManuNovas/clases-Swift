//: Playground - noun: a place where people can play

import UIKit

//willset y didset son observadores

class Empleado{
    var sueldo: Double{
        //antes de asignar el valor
        willSet(nuevoSueldo){
            print("El sueldo va a ser cambiado \(nuevoSueldo)")
        }
        //Ya que se cambió el valor
        didSet{
            print("El sueldo era \(oldValue)")
            print("El sueldo cambio a \(self.sueldo)")
        }
    }
    
    init( ){
        self.sueldo = 0
    }
}

let godin = Empleado( )

godin.sueldo = 300
