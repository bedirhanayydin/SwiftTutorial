//
//  FormExample.swift
//  first
//
//  Created by bedirhan on 15.08.2023.
//

import SwiftUI
struct FormExample: View {
    
    @State var name: String = ""
    @State var isHidden: Bool = false
    @State var email: String = ""
    @State var receiveEmails: Bool = false
    @State private var index = 0
    var emailOptions = ["All", "Transactional", "Marketing"]
    @State var volumeSliderValue: Double = 0
    @State var stepper: Int = 0
    @State var date = Date()


    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Profile")) {
                    Text("Name").font(.headline)
                    TextField("", text: $name)
                        .padding(.all)
                        .background(Color(red: 200.0/255.0, green: 200.0/255.0, blue: 200.0/255.0, opacity: 0.7))
                    Toggle(isOn: $isHidden) {
                        Text("Hide account")
                    }
                }
                
                Section(header: Text("Emails")) {
                    Toggle(isOn: $receiveEmails) {
                        Text("Receive emails")
                    }
                    TextField("", text: $email)
                        .padding(.all)
                        .background(Color(red: 200.0/255.0, green: 200.0/255.0, blue: 200.0/255.0, opacity: 0.7))
                }
                
                Section(header: Text("Email types")) {
                    Picker(selection: $index, label: Text("Email types")) {
                        ForEach(0 ..< emailOptions.count) {
                            Text(self.emailOptions[$0])
                        }
                    }
                }
                
                Section(header: Text("Value:\(String(volumeSliderValue))")) {
                    Slider(value: $volumeSliderValue, in: 0...100, step: 1)
                        .padding()
                        .accentColor(Color.blue)
                        .border(Color.blue, width: 3)
                }
                .padding(.horizontal, 16)
                
                Section(header: Text("Volume \(stepper)")) {
                    Stepper("Volume is: ", value: $stepper, in: 0...10, step: 1)
                        .padding()
                        .accentColor(Color.blue)
                }
                .padding(.horizontal, 16)
                
                Section(header: Text("Date")) {
                    DatePicker("Pick a Date", selection: $date,displayedComponents: .date)
                }
                .padding(.horizontal, 16)
                
                Section {
                    Button(action: {
                        print("Reset to Default")
                        name = ""
                        isHidden = false
                        email = ""
                        receiveEmails = false
                        index = 0
                        volumeSliderValue = 0
                    }) {
                        Text("Reset to Default")
                    }
                }
                .padding(.horizontal, 16)
            }
            .navigationBarTitle(Text("FORM"))
        }
    }
}

struct FormExample_Previews: PreviewProvider {
    static var previews: some View {
        FormExample()
    }
}
