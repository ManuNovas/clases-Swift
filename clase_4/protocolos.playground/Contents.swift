//: Playground - noun: a place where people can play

import UIKit

protocol miProtocolo{
    //para una propiedad calculada se define get
    //para una propiedad almacenada se define set
    var propiedad: Int{ get }
    
    func miFuncion( )
}

class MiClase: miProtocolo{
    var propiedad = 0
    
    func miFuncion( ){
        print("Esta es la funcion de la clase")
    }
}

struct MiStructura: miProtocolo{
    var propiedad = 0
    
    func miFuncion( ){
        print("Esta es la funcion de la estructura")
    }
}

enum MiEnum: miProtocolo{
    func miFuncion( ){
        print("Esta es la funcion del enum")
    }
}

let objeto = MiClase( )

objeto.propiedad
objeto.miFuncion( )
