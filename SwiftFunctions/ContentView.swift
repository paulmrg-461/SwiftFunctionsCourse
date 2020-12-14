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


//Nested functions
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}
return backward ? stepBackward : stepForward
}

var value = -7
let moveNearerZero = chooseStepFunction(backward: value > 0)
while value != 0 {
print("\(value)...")
value = moveNearerZero(value)
}
print("Cero!!!!")
