//
//  ContentView.swift
//  SwiftFunctions
//
//  Created by Paul Realpe on 11/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text(greeting(person: "Paul Realpe", age: 24, isMale: true))
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func greeting(person: String, age: Int, isMale: Bool) -> String {
    let greet = isMale ? "\(getMenGreetingMessage(age: age)) \(person)"  : "\(getWomenGreetingMessage(age: age)) \(person)"
    return greet
}
//Saludar mujer
func getWomenGreetingMessage(age: Int) -> String {
    switch age {
    case 12...18:
        return "Bienvenida señorita"
    case 19...90:
        return "Bienvenida señora"
    default:
        return "Bienvenida"
    }
}
//Saludar hombre
func getMenGreetingMessage(age: Int) -> String {
    switch age {
    case 12...18:
        return "Bienvenido joven"
    case 19...90:
        return "Bienvenido señor"
    default:
        return "Bienvenido"
    }
}



