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
enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToGo = CompassPoint.east
directionToGo = .north

switch directionToGo {
case .north:
    print("Hay que ir al norte.")
case .south:
    print("Hay pinguinos en el sur")
case .east:
    print("Mordor se extiende hacia las tierras del este")
case .west:
    print("Cuidado con los vaqueros!")
}

let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("La Tierra es segura!")
default:
    print("No es seguro ir a ese planeta!")
}

enum Beverage: CaseIterable {
    case coffee, beer, tea, juice, lemonade, redbull
}

let numberOfChoices = Beverage.allCases.count
print(numberOfChoices)
for beverage in Beverage.allCases{
    print(beverage)
}
