//: Playground - noun: a place where people can play

import UIKit

var nombre: String?

//inicio del anti-if
guard let nom = nombre else {
    print("No se encuentra valor")
}

//Se garantiza que nom exista fuera del if
print(nom)
