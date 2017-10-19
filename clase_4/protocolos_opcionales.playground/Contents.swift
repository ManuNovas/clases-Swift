//: Playground - noun: a place where people can play

import UIKit

//enseña todos los metodos que deben de ser implementados
//Esta escrito en objetive-c para que pueda ser visible para todas las plataformas mac
//objetive-c trabaja más rápido para trabajar a bajo nivel
@objc protocol miProtocoloOpcional{
    func miFuncion( )
    var var2: Int{ get }
    @objc optional var variable: Int{ get }
}

protocol miProtocolo{
    mutating func miFuncion( )
    var var2: Int{ get }
}

//El objc sólo puede ser utilizado por clases
class MiClase: miProtocoloOpcional{
    var var2 = 0
    func miFuncion() {
        
    }
}

struct MiStruct: miProtocolo{
    var var2 = 0
    
    mutating func miFuncion( ){
        
    }
}
