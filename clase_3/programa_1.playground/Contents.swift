//: Playground - noun: a place where people can play

import UIKit

var nombre:String? = "Mane"
var apellido:String? = "Novas"
//var apellido:String? = nil
var sorpresa:String? = "Hola"

//Encadenamiento de optionals
if let nom = nombre, let ape = apellido{
    print("Tu nombre es: " + nom)
    print("Tu apellido es: " + ape)
}else{
    print("Se almacenó un valor nulo")
}

print(sorpresa!)

//Declaración básica de un functional
//_ = { ( ) -> ( ) in }
//un closure con @escape es un asíncrono
//_ placeholder es una variable que no vas a utilizar

_ = { (numero:Int) -> Int in
    return numero + 3
}

func sumatoria(valor:Int, sumaFunc:(Int) -> Int) -> Int{
    return sumaFunc(valor)
}

let closure = {(valorNumero:Int) -> Int in
    return valorNumero + 10
}

sumatoria(valor: 5, sumaFunc: closure)

sumatoria(valor: 5, sumaFunc: {(valorNumero: Int) -> Int in return valorNumero + 5})

sumatoria(valor: 5, sumaFunc: {(valorNumero: Int) in return valorNumero + 5})

sumatoria(valor: 5, sumaFunc: {valorNumero in return valorNumero + 5})

//$0 es el parametro 0 de la funcion
sumatoria(valor: 5, sumaFunc: {return $0 + 5})

sumatoria(valor: 5) {return $0 + 5}
