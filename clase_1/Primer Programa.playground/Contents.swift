//: Playground - noun: a place where people can play

import UIKit

class Alumno{
    var edad = 0
    var nombre = ""
}

class Profesor{
    var edad: Int
    var nombre: String
    
    //Constructor vacío
    init( ){
        self.edad = 0
        self.nombre = ""
    }
    
    //Constructor de la clase
    init(edad: Int, nombre: String){
        self.edad = edad
        self.nombre = nombre
    }
    
    //métodos
    func daClase( ){
        print("Estoy dando clase")
    }
}

//Se debe de poner nombre a los parametros
let profesor = Profesor(edad: 23, nombre: "Pedro")
let profesor2 = Profesor( )

profesor.daClase( )

/*
//Con let declaras constantes, las clases se deben declarar como constante, mas sus atributos pueden ser variables
let alumno = Alumno( )
//profe es una referencia a memoria de alumno
let profe = alumno

alumno.edad = 22
alumno.nombre = "Mane"

profe.edad = 33
profe.nombre = "German"

alumno.edad
profe.edad

alumno.nombre
profe.nombre
*/
