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
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            NavigationStack {
                Form {
                    Section {
                        TextField("Amount: ", value: $billTotal, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                            .keyboardType(.decimalPad)
                    }
                    Section("Select a tip percentage") {
                        Picker("Tip Percentage", selection: $tipPercentage) {
                            ForEach(tipPercentages, id: \.self) {
                                Text($0, format: .percent)
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                    Section {
                        Picker("Number of People", selection: $numberOfPeople) {
                            ForEach(2..<100) {
                                Text("\($0) People")
                            }
                            .pickerStyle(.navigationLink)
                            
                        }
                    }
                    Section ("Per Person") {
                        Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
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
