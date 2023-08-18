//
//  ContentView.swift
//  first
//
//  Created by bedirhan on 26.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State var isTurkish: Bool = false

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 24)
                .foregroundColor(.blue)
            Divider()
                .overlay(Color.green)
            Divider()
                .background(Color.blue)
                .frame(height: 5)
            HStack {
                Text("Divider example")
                Divider()
                    .overlay(Color.blue)
                Text("\"A visual element that can be used to separate other content.\"")
            }
            HStack {
                Text("Divider example")
                VerticalDivider(color: Color.red, width: 12)
                Text("\"A visual element that can be used to separate other content.\"")
            }

            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
            MapView()
                .frame(height: 100).ignoresSafeArea(edges: .top)
            
            CircleImage()
                .offset(y: -80)
                .padding(.bottom, -150)
            VStack(alignment: .leading) {
                Image(systemName: "globe")
                    .padding(3.0)
                    .imageScale(.large)
                    .foregroundColor(.pink)
                if isTurkish {
                    Text("Merhaba Dünya!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.orange)
                        .padding(12)
                 } else {
                    Text("Hello, world!")
                        .font(.title)
                        .padding(EdgeInsets(top: 1, leading: 2, bottom: 3, trailing: 4))
                        .fontWeight(.bold)
                        .foregroundColor(Color.orange)
                }
                Button("Show details") {
                    self.isTurkish.toggle()
                }.gesture(TapGesture().onEnded({ Void in
                    print("qsd")
                }))
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("Placeholder2")
                }.font(.subheadline)
                    .foregroundColor(.secondary)
                Divider()

                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
        }

        .padding()
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


