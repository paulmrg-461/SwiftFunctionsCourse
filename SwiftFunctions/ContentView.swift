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

var x = 5
func addOne(number: Int) {
    var number2 = number
    number2 += 1
    print("El numero ahora vale \(number2)")
}
//addOne(number: x)

func swapTwoInts(_ a: inout Int, _ b: inout Int) -> (a: Int, b: Int) {
    let tempA = a
    a = b
    b = tempA
    return (a,b)
}

var someInt = 3
var otherInt = 7

//print(swapTwoInts(&someInt, &otherInt))
