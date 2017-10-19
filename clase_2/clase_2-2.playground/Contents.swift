//: Playground - noun: a place where people can play

import UIKit

class Alumno{
    var calificacion: Int
    
    init?(calificacion: Int){
        self.calificacion = calificacion
        if self.calificacion < 0 || self.calificacion > 10 {
            return nil
        }
    }
    
    func suma(cals:[Int]) -> Int?{
        if cals.isEmpty{
            return nil
        }
        
        var resultado = 0
        for valor in cals{
            resultado += valor
        }
        return resultado
    }
}

let alumno = Alumno(calificacion: -2) //Arroja mensaje de error y devuelve nulo
let alumno2 = Alumno(calificacion: 10)
let alumno3 = Alumno(calificacion: 11)

if alumno2 != nil {
    print("Calificacion correcta")
}
else{
    print("Calificacion erronea")
}

var resultado1 = [Int]( )
var resultado2 = [2, 3, 4, 5, 10, 7]
var resultado3 = [-2, 5, -3]

alumno2?.suma(cals: resultado1)
