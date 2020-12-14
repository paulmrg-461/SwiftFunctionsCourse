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

func someFunctionThatTakesAClosure(closure: () -> Void) {
    //Aqui iria el cuerpo de la funcion
}

someFunctionThatTakesAClosure(closure: {
    // Aqui iria el cuerpo del closure
})

someFunctionThatTakesAClosure {
    // Anadir el closure aqui
}

reversedNames = names.sorted {$0>$1}

let digitNames = [0: "Cero", 1: "Uno", 2: "Dos", 3: "Tres", 4: "Cuatro", 5: "Cinco", 6: "Seis", 7: "Siete", 8: "Ocho", 9: "Nueve"]

let numbers = [16, 58, 510, 2127]

let numberStrings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number%10]! + output
        number /= 10
    } while number > 0
    return output
}

print(numberStrings)
