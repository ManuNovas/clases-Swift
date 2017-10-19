//: Playground - noun: a place where people can play

import UIKit

struct Empleado{
    var nombre: String
    var salario: Double
    //Agrupar una lista de datos
    enum Departamentos{
        case Ingenieria, Contabilidad, Mercadotecnia, Ventas, Ninguno
    }
    var depto: Departamentos
    
    init( ){
        self.nombre = "Desconocido"
        self.salario = 0
        self.depto = .Ninguno
    }
    
    init(nombre: String, salario: Double, depto: Departamentos){
        self.nombre = nombre
        self.salario = salario
        self.depto = depto
    }
    
    //Solo con mutating se pueden alterar los atributos de la estructura
    mutating func impuestos( ){
        let total = self.salario * 0.1
        print("El total de impuesto es \(total)")
        self.salario -= total
    }
}

//Cuando una estructura se declara constante, todo se vuelve constante
var godin = Empleado(nombre: "German", salario: 8000, depto: .Ingenieria)
godin.salario = 9000
godin.impuestos()

//En este caso, se le paso una copia a la nueva variable, los cambios son independientes
var godin2 = godin
godin2.nombre = "Pepe"

godin.nombre
godin2.nombre
