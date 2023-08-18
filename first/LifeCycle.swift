//
//  LifeCycle.swift
//  first
//
//  Created by bedirhan on 8.08.2023.
//

import SwiftUI

struct LifeCycle: View {
    var name: String
    
    init(name: String) {
        self.name = name
        print("ContentView initialized with name: \(name)")
    }
    
    var body: some View {
        VStack(){
            Text("Hello, \(name)!")
                .onAppear {
                    print("View appeared!")
                }
                .onDisappear {
                    print("View disappeared!")
                }
        }
   
    }
}

struct LifeCycle_Previews: PreviewProvider {
    static var previews: some View {
        LifeCycle(name: "John")
    }
}
