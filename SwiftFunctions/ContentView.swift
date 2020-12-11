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

func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}

let count = printAndCount(string: "Vitor Tolazo")
//print(count)

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1 ..< array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [-5,7,5,8,3,0,-10])
//print("Los valores se encuentran entre \(bounds!.min) y \(bounds!.max)")


