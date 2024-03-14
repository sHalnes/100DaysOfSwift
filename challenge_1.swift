//
//  ContentView.swift
//  LengthConverter
//
//  Created by Svetlana Halnes on 03/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var inputValue = 0.0
    @State private var convertFrom = "inch"
    @State private var convertTo = "cm"
    @FocusState private var amountIsFocused: Bool
    
    let valuesToConvert = ["cm", "inch", "feet", "yard"]
    
    var convertedValue: Double {
        let value = Double(inputValue)
        var valueToReturn = 0.0
        var helpValue = 0.0
        // step 1: convert to cm
        switch convertFrom{
        case "inch":
            helpValue = value * 2.54
        case "feet":
            helpValue = value  * 30.48
        case "yard":
            helpValue = value * 91.44
        default:
            helpValue = value
        }
        //step 2: convert to a chosen measurement
        switch convertTo {
        case "inch":
            valueToReturn = helpValue * 0.3937
        case "feet":
            valueToReturn = helpValue * 0.03280
        case "yard":
            valueToReturn = helpValue * 0.010936
        default:
            valueToReturn = helpValue
        }
        
        return round(valueToReturn)
    }
    
    var body: some View {
        NavigationStack{
            Form{
                Section("Type the number to convert"){
                    TextField("Number to convert", value: $inputValue, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    Picker("choose from", selection: $convertFrom){
                        ForEach(valuesToConvert, id: \.self){
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                }
                Section("choose which measurement convert to"){
                    //Text(convertedValue, format: .number)
                    Picker("", selection: $convertTo) {
                        ForEach(valuesToConvert, id: \.self){
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                }
                
                Section("This will be"){
                    Text(convertedValue, format: .number)
                }
            }
            .navigationTitle("Converter")
            .toolbar{
                if amountIsFocused {
                    Button("Done"){
                        amountIsFocused = false
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
