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

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
let earthOrder = Planet.earth.rawValue

let possiblePlanet = Planet(rawValue: 5)
let planetPosition = -6
if let anyPlanet = Planet(rawValue: planetPosition){
    switch anyPlanet{
    case .earth:
        print("La tierra es segura")
    default:
        print("No es posible ir a este planeta")
    }
}else{
    print("El planeta indicado no existe.")
}


enum ASCIIControlCharacter: Character{
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}



