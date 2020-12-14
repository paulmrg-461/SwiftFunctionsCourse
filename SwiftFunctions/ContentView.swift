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

let negativeNumbers = [-9, 34 , -23, -2127 ,46, -6]

let negativeNumbersStrings = negativeNumbers.map{ (number) -> String in
    
    var number = number
    var output = ""
    let minus = "menos"
    let negative = number
    
    number = number < 0 ? number * -1 : number
    
    repeat{
        output = digitNames[number%10]! + output
        number /= 10
    }while number > 0
    output = negative < 0 ? minus + output : output
    return output
}

print(negativeNumbersStrings)
