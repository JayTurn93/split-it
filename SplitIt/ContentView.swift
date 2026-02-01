//
//  ContentView.swift
//  SplitIt
//
//  Created by Jalysa Turner on 1/27/26.
//

import SwiftUI

struct ContentView: View {
    @State private var billTotal = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 15
    let tipPercentages = [10, 15, 20, 25, 30]
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2) //offsets our selections due to not including 0 and 1.
        let tipSelection = Double(tipPercentage)
        
        let tipValue = billTotal / 100 * tipSelection
        let grandTotal = billTotal + tipValue
        let perPerson = grandTotal / peopleCount
        
        return perPerson
    }
    var billWithTip: Double {
        let tipSelection = Double(tipPercentage)
        let tipValue = billTotal / 100 * tipSelection
        return billTotal + tipValue
    }
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            NavigationStack {
                Form {
                    Section ("Bill Amount") {
                        TextField("Amount", value: $billTotal, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                            .keyboardType(.decimalPad)
                    }
                    Section("Select a tip percentage") {
                        Picker("Tip Percentage", selection: $tipPercentage) {
                            ForEach(1...100, id: \.self) {
                                Text($0, format: .percent)
                            }
                        }
                        .pickerStyle(.navigationLink)
                    }
                    Section {
                        Picker("Number of People", selection: $numberOfPeople) {
                            ForEach(2..<100) {
                                Text("\($0) People")
                            }
                            .pickerStyle(.navigationLink)
                            
                        }
                    }
                    Section ("Per Person"){
                        Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    }
                    Section ("Bill Total") {
                        Text(billWithTip, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    }
                }
                
                    .navigationTitle(Text("Split It"))
                }
                
            }
            .padding()
        }
        
    }


#Preview {
    ContentView()
}
