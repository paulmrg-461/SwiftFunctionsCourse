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

let names = ["Paul", "Daniel", "Deiby", "Diego", "Rafael", "Aldivar", "Stiven", "John"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

print(backward("Paul", "Rafael"))

var reversedNames = names.sorted(by: backward)
print(reversedNames)
/*
 {
 (params) -> return type in
 // Closure code
 }
 */
//Closure function
var orderNamesByReverse = names.sorted { (s1: String, s2: String) -> Bool in
    return s1 > s2
}
orderNamesByReverse = names.sorted(by: { $0 > $1 })
orderNamesByReverse = names.sorted(by: < )
print(orderNamesByReverse)
