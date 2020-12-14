//
//  ContentView.swift
//  SwiftFunctions
//
//  Created by Paul Realpe on 11/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Paul Realpe")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
} // (Int, Int) -> Int

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
} // (Int, Int) -> Int
// Asigna los tipos de dato de una funcion a una variable y posteriormente se puede acceder a dicha funcion desde el llamado a esa variable
var mathFunction: (Int, Int) -> Int = multiplyTwoInts

print(mathFunction(5,6))


func printMathResult(_ mathFunc: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("El resultado de la operacion es: \(mathFunction(a,b))")
}

printMathResult(multiplyTwoInts, 5, 9)


func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var value = -7
let moveNearerZero = chooseStepFunction(backward: value > 0)
while value != 0 {
    print("\(value)...")
    value = moveNearerZero(value)
}
print("Cero!!!!")


