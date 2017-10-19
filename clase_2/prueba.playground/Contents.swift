//: Playground - noun: a place where people can play

import UIKit

let defaultScore = 100
var playerOneScore = defaultScore
//este es un cometario
var playerTwoScorte = defaultScore
print(playerOneScore)
print(playerTwoScorte)
/*este tambien es un comentario*/
playerTwoScorte = 200
print(" el escore de usuario es \(playerTwoScorte)")

struct Persona{
    let nombre: String
    let apellido : String
    
    func decirhola(){
        print("hola, mi nombre es \(nombre) \(apellido)")
    }
}

let aPersona = Persona(nombre: "juan", apellido : "parez")
let otraPersona = Persona(nombre: "carlos", apellido: "ramos")

aPersona.decirhola()
otraPersona.decirhola()

let letra : Character = "a"

type(of: letra)

var x1: Int
x1=10
print (x1)

let x = 3
let y = 0.1416
let pi = Double (x) + y
print (pi)

