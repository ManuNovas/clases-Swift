//: Playground - noun: a place where people can play

import UIKit

//Las tuplas se guardan por valor
var tupla: (nombre: String, edad: Int, estatura: Double) = ("Mane", 22, 171)
var alumno: (nombre: String, promedio: Double) = ("José", 6.8)
var (nombreAlumno, promedioAlumno) = alumno
var var1 = alumno.nombre
let (var2, _) = alumno

print(nombreAlumno)
print(promedioAlumno)

print(var1)
print(var2)

print(alumno)
//Lo imprime en 7.99999999 porque la precisión que maneja swift

/*func funcion( ){ }
let resultado = funcion( )*/
//en java a los protocolos se les llama interface
//si es una var se puede modificar los valores de la tupla, si es let no

tupla.nombre
tupla.0

tupla.edad
tupla.1

tupla.estatura
tupla.2
