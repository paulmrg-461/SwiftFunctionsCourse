//
//  ContentView.swift
//  SwiftFunctions
//
//  Created by Paul Realpe on 11/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text(greeting(person: "Paul Realpe"))
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
func greeting(person: String) -> String {
    let greet = "Hola, \(person)!"
    return greet
}

