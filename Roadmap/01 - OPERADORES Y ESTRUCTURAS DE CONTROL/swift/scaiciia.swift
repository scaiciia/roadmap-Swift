/*
 * EJERCICIO:
 * - Crea ejemplos utilizando todos los tipos de operadores de tu lenguaje:
 *   Aritméticos, lógicos, de comparación, asignación, identidad, pertenencia, bits...
 *   (Ten en cuenta que cada lenguaje puede poseer unos diferentes)
 * - Utilizando las operaciones con operadores que tú quieras, crea ejemplos
 *   que representen todos los tipos de estructuras de control que existan
 *   en tu lenguaje:
 *   Condicionales, iterativas, excepciones...
 * - Debes hacer print por consola del resultado de todos los ejemplos.
 *
 * DIFICULTAD EXTRA (opcional):
 * Crea un programa que imprima por consola todos los números comprendidos
 * entre 10 y 55 (incluidos), pares, y que no son ni el 16 ni múltiplos de 3.
 *
 * Seguro que al revisar detenidamente las posibilidades has descubierto algo nuevo.
 */

import Foundation

/*---------------------------------------------------------------Operadores---------------------------------------------------------------*/

//Operadores aritmeticos
    var suma = 2 + 3 // 5
    print(suma)
    var resta = 2 - 3 // -1
    print(resta)
    var multiplicacion = 2 * 3 // 6
    print(multiplicacion)
    var division = 2 / 3 // 0
    print(division)
    var resto = 2 % 3 // 2
    print(resto)

//Operadores logicos
    var conjucion = true && true // true
    print(conjucion)
    var disyuncion = true || false // true
    print(disyuncion)
    var negacion = !false // true
    print(negacion)

//Operadores de comparacion
    
    var igual = 1 == 1 // true
    print(igual)
    var distinto = 2 != 1 // true
    print(distinto)
    var mayor = 2 > 1 // true
    print(mayor)
    var menor = 1 < 2 // true
    print(menor)
    var mayorIgual = 1 >= 1 // true
    print(mayorIgual)
    var menorIgual = 2 <= 1 // false
    print(menorIgual)

//Operadores asignación
    var asignacion = 1
    print(asignacion)
    asignacion += 1
    print(asignacion)
    asignacion -= 1
    print(asignacion)
    asignacion *= 2
    print(asignacion)
    asignacion /= 2
    print(asignacion)

//Operadores de identidad
    class Persona {
        var nombre: String
        
        init(nombre: String) {
            self.nombre = nombre
        }
    }

    let persona1 = Persona(nombre: "Santiago")
    let persona2 = Persona(nombre: "Agustin")
    
    let iguales = persona1 === persona2
    print(iguales)
    let distintos= persona1 !== persona2
    print(distintos)

//Operadores de pertenencia
    let arreglo = [1, 2, 3, 4, 5, 6]
    let contiene = arreglo.contains(3)
    print(contiene)
    
    let arreglo = ["Santiago", "Pablo", "Agustin", "Jonatan"]
    let contieneDonde = arreglo.contains(where: {$0.count > 6})
    print(contieneDonde)

    let set1:Set<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    let set2:Set<Int> = [6, 7, 8]
    let esSubConjunto = set2.isSubset(of: set1)
    print(esSubConjunto)

//Operadores de bits
    let and = 0b0011 & 0b0101
    print(and)
    let or = 0b0011 | 0b0101
    print(or)
    let xor = 0b0011 ^ 0b0101
    print(xor)
    let not = ~0b01
    print(not)
    let desplzDer = 0b0010 << 1
    print(desplzDer)
    let desplzIzq = 0b0100 >> 2
    print(desplzIzq)

/*---------------------------------------------------------Estructuras de Control---------------------------------------------------------*/

//if-else
    let verdadero = true

    if (verdadero) {
        print("Ejecuta este bloque de codigo cuando la condicion es verdadero")
    } else {
        print("Ejecuta este bloque de codigo cuando la condicion es falso")
    }

//for
    print("Se usa para iterar sobre una secuencia. En el siguiente ejemplo, itera entre el 1 y el 4")
    for numero in 1...4 {
        print(numero)
    }

//while
    
    var i = 0
    print("While repite mientras la condicion sea verdadero. Puede repetir el bloque de instrucciones 0 o mas veces.")
    while (i < 10) {
        print("Repeticiones: \(i)")
        i += 1
    }

//repeat-while

    var i = 0
    print("repeat-while repite hasta que la condicion sea falso. Puede repetir el bloque 1 o mas veces.")
    repeat {
        print("Repeticiones: \(i)")
        i += 1
    } while (i < 10)

//switch

    print("Ejecuta un bloque de instrucciones que coincida con el valor de la variable a evaluar.")
    let edad = 200
    switch edad {
    case 0,1,2:
        print("Eres un bebé")
    case 3...10:
        print("Eres un niño")
    case 11..<16:
        print("Eres un adolescente")
    case 16..<70:
        print("Eres adulto")
    case 70..<100:
        print("Eres anciano")
    default:
        print("☠️")
    }

/*---------------------------------------------------------EXTRA---------------------------------------------------------*/

 /*Crea un programa que imprima por consola todos los números comprendidos
  * entre 10 y 55 (incluidos), pares, y que no son ni el 16 ni múltiplos de 3.
  */

for i in 10..55 {
    if ((i % 2 == 0) && (i != 16) && (i % 3 != 0)){
        print(i)
    }
}
