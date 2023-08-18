//
//  EnvironmentObjectExample.swift
//  first
//
//  Created by bedirhan on 15.08.2023.
//

import SwiftUI

 
class UserData: ObservableObject {
    @Published var username = "Guest"
}

struct EnvironmentObjectExample: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        VStack {
            Text("Welcome, \(userData.username)!")
            Button("Change Username") {
                userData.username = "John"
            }
            .padding()
        }
    }
}


struct EnvironmentObjectExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectExample()
            .environmentObject(UserData()) // Paylaşılacak nesneyi environment'a ekliyoruz    
    }
}
