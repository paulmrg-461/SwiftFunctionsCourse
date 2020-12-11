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

func someFunction(f1 firstParamName: Int, f2 secondParamName: Int = 6) {
    print(firstParamName + secondParamName)
}

//someFunction(f1: 5, f2: 1)

func greeting(_ person: String, from hometown: String) -> String{
    return "Hola \(person) un placer que nos visites desde \(hometown)."
}

//print(greeting("Paul Realpe", from: "Colombia"))

func mean(_ numbers: Double... )  -> Double{
    var total : Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

//print(mean(1,2,3,4,5,6,7))


