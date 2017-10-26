//: Playground - noun: a place where people can play

import UIKit

final class Alumno{
    //Un final no deja que siga la herencia
    
    //private asegura el encapsulamiento
    private var edad: Int = 10
    //static asegura una única referencia en memoria
    static var numero: Int = 0
}

let paw = Alumno( )
let mane = Alumno( )

//paw.numero = 1 //error
