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
                        Picker("Number of People", selection: $numberOfPeople) {
                            ForEach(2..<100) {
                                Text("\($0) People")
                            }
                            .pickerStyle(.navigationLink)
                        }
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
