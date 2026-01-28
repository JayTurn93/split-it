//
//  ContentView.swift
//  SplitIt
//
//  Created by Jalysa Turner on 1/27/26.
//

import SwiftUI

struct ContentView: View {
    @State var buttonTaps = 0
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            NavigationStack {
                Form {
                    Section {
                        Text("Hello World")
                        Text("Hello World")
                    }
                    
                    Button("Button Taps: \(buttonTaps)") {
                        self.buttonTaps += 1
                    }
                    Section{
                        ForEach (0..<5) {
                            Text("Row \($0)")
                        }
                      }
                    Section {
                        Picker("Select you student: ", selection: $selectedStudent){
                            ForEach (students, id: \.self) {
                                Text($0)
                            }
                        }
                    }
                    }
                }
                .navigationTitle(Text("Start"))
            }
            .padding()
        }
        
    }


#Preview {
    ContentView()
}
