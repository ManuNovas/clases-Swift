//: Playground - noun: a place where people can play

import UIKit

protocol miProtocolo{
    //para una propiedad calculada se define get
    //para una propiedad almacenada se define set
    var propiedad: Int{ get }
    
    func miFuncion( )
}

protocol miProtocolo2: miProtocolo{
    func miFuncion2( )
    init(arg: Int)
}

class MiClase: miProtocolo2{
    var propiedad = 0
    
    func miFuncion( ){
        print("Esta es la funcion de la clase")
    }
    
    func miFuncion2( ){
        print("Esta es la funcion del protocolo 2")
    }
    
    //Se debe de especificar con required que es parte del protocolo para no confundirse con el de la clase
    required init(arg: Int){
        self.propiedad = arg
    }
}

struct MiStructura: miProtocolo{
    var propiedad = 0
    
    func miFuncion( ){
        print("Esta es la funcion de la estructura")
    }
}

enum MiEnum: miProtocolo{
    //volviendo calculada a la propiedad para (solo) el enum
    var propiedad: Int{
        get{
            return 0
        }
    }
    
    func miFuncion( ){
        print("Esta es la funcion del enum")
    }
}

let objeto = MiClase(arg: 3)

objeto.propiedad
objeto.miFuncion( )
