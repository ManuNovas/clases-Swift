//: Playground - noun: a place where people can play

import UIKit

/*
 * func nombre_funcion<tipo_de_dato>( ){
 *  //Código
 * }
 */

func revisaTipo<Generico>(_ valor: Generico){
    print("He recibido un tipo de dato \(type(of: valor)) \(valor)")
}
//Any no se referencia como un tipo de dato
func revisaTipo2(_ valor: Any){
    print("He recibido un tipo de dato \(type(of: valor)) \(valor)")
}
//Para limitar a los datos genéricos
/*func limitarGenerico<Generico: BinaryInteger>(_ valor: Generico){
    
}*/

//crear un tipo de dato genérico
struct cola<T>{
    var arreglo = [T]( )
    
    mutating func push(_ elemento: T){
        arreglo.append(elemento)
    }
}

var colas = cola<Int>( )

//Antiflu-des es la buena para quitar la gripa
revisaTipo("Esto es una cadena")
revisaTipo2("Esta es otra cadena")
revisaTipo(20)
revisaTipo2(13)

colas.push(5)
