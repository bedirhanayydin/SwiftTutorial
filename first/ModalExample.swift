//
//  ModalExample.swift
//  first
//
//  Created by bedirhan on 15.08.2023.
//

import SwiftUI


struct ModalExample: View {
    @State private var showModal = false
    
    var body: some View {
        VStack {
            Button("Show modal") {
                self.showModal = true
            }
        }.sheet(isPresented: $showModal, onDismiss: {
            print(self.showModal)
        }) {
            ModalView(message: "This is Modal view")
        }
    }
}
struct ModalView: View {
    @Environment(\.presentationMode) var presentation
    let message: String
    
    var body: some View {
        VStack {
            Text(message)
            Button("Dismiss") {
                self.presentation.wrappedValue.dismiss()
            }
        }
    }
}
struct ModalExample_Previews: PreviewProvider {
    static var previews: some View {
        ModalExample()
    }
}
