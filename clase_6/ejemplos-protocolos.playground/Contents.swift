//: Playground - noun: a place where people can play

import UIKit

//Las estructuras no aceptan herencia
struct Recepcionista{ }
struct Enfermera{ }
struct Doctor{ }
struct Cirujano{ }

protocol Pagable{
    func calculaSueldo( ) -> Int
}
protocol SuministraTratamiento{
    func tratamiento(nombre: String)
}
protocol Capacitacion{
    func estudiar( )
}

//Con esta extensión el usuario decide si implementa la función o no
extension Pagable{
    func calculaSueldo( ) -> Int{
        return 10000
    }
}
extension SuministraTratamiento{
    func tratamiento(nombre: String){
        print("Estoy suministrando " + nombre)
    }
}
extension Capacitacion{
    func estudiar( ){
        print("Viendo youtube")
    }
}
//Agregando exgensiones a extensiones
extension Recepcionista: Pagable, Capacitacion{ }
extension Enfermera: Pagable, Capacitacion, SuministraTratamiento{ }
extension Doctor: Pagable, Capacitacion, SuministraTratamiento{ }

let simi = Doctor( )
simi.tratamiento(nombre: "Paracetamol")
