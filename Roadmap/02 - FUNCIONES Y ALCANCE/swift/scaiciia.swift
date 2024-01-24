/*
 * EJERCICIO:
 * - Crea ejemplos de funciones básicas que representen las diferentes
 *   posibilidades del lenguaje:
 *   Sin parámetros ni retorno, con uno o varios parámetros, con retorno...
 * - Comprueba si puedes crear funciones dentro de funciones.
 * - Utiliza algún ejemplo de funciones ya creadas en el lenguaje.
 * - Pon a prueba el concepto de variable LOCAL y GLOBAL.
 * - Debes hacer print por consola del resultado de todos los ejemplos.
 *   (y tener en cuenta que cada lenguaje puede poseer más o menos posibilidades)
 *
 * DIFICULTAD EXTRA (opcional):
 * Crea una función que reciba dos parámetros de tipo cadena de texto y retorne un número.
 * - La función imprime todos los números del 1 al 100. Teniendo en cuenta que:
 *   - Si el número es múltiplo de 3, muestra la cadena de texto del primer parámetro.
 *   - Si el número es múltiplo de 5, muestra la cadena de texto del segundo parámetro.
 *   - Si el número es múltiplo de 3 y de 5, muestra las dos cadenas de texto concatenadas.
 *   - La función retorna el número de veces que se ha impreso el número en lugar de los textos.
 *
 * Presta especial atención a la sintaxis que debes utilizar en cada uno de los casos.
 * Cada lenguaje sigue una convenciones que debes de respetar para que el código se entienda.
 */


import Foundation

/*----------Funciones basicas----------*/

//Funcion sin parametros y sin retorno

func sinParametroSinRetorno() {
    print("Funcion sin parametros y sin retorno")
}

//Funcion con un parametro y sin retorno

func unParametroSinRetorno(name: String) {
    print("Funcion con un parametro y sin retorno")
    print("Nombre: \(name)")
}

//Funcion con varios parametros y sin retorno

func variosParametrosSinRetorno(name: String, age: Int) {
    print("Funcion con varios parametros y sin retorno")
    print("Nombre: \(name) - Edad: \(age)")
}

//Funcion sin parametros con un retorno
func sinParametrosUnRetorno() -> String {
    print("Funcion sin parametros y con un retorno")
    return "Pablo"
}

//Funcion sin parametros y con varios retornos

func sinParametrosVariosRetornos() -> (nom: String, edad: Int) {
    print("Funcion sin parametros y con varios retornos. Se utiliza una tupla como valor de retorno.")
    return ("Agustin", 31)
}

//Funcion con parametros y con retornos

func conParametrosConRetornos(name: String, age: Int ) -> (nom: String, edad: Int) {
    print("Funcion con varios parametros y retornos")
    return (name, age)
}

let name = "Santiago"
let age = 33

sinParametroSinRetorno()
unParametroSinRetorno(name: name)
variosParametrosSinRetorno(name: name, age: age)
print(sinParametrosUnRetorno())
var retorno = sinParametrosVariosRetornos()
print("Nombre: \(retorno.nom) - Edad: \(retorno.edad)")
retorno = conParametrosConRetornos(name: name, age: age)
print("Nombre: \(retorno.nom) - Edad: \(retorno.edad)")

/*----------Funciones anidadas----------*/

func funcionUno() {
    func funcionDos() {
        print("Esta es la funcion dos")
    }
    print("Esta es la funcion uno")
    funcionDos()
}

funcionUno()

/*----------Funciones del lenguaje----------*/

print("La funcion print es una funcion ya creada en el lenguaje")

/*----------Alcance de variables----------*/

let global = "Esta es una variable global"

func alcance() {
    let local = "Esta es una variable local"
    print(local)
    print(global)
}

alcance()

/*----------Extra----------*/

func dificultadExtra(textoUno: String, textoDos: String) -> Int {
    var cont: Int = 0
    for i in 1...100 {
        if (i % 3 == 0) {
            if (i % 5 == 0) {
                print(textoUno + textoDos)
            } else {
                print(textoUno)
            }
        } else {
            if (i % 5 == 0) {
                print(textoDos)
            } else {
                print(i)
                cont += 1
            }
        }
    }
    return cont
}

let texto1 = "Primer texto"
let texto2 = "Segundo texto"
let contador: Int = dificultadExtra(textoUno: texto1, textoDos: texto2)
print(contador)
