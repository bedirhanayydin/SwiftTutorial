//
//  AlertExample.swift
//  first
//
//  Created by bedirhan on 15.08.2023.
//

import SwiftUI

struct Message: Identifiable {
    let id = UUID()
    let text: String
}

struct AlertExample: View {
    @State private var message: Message? = nil

    var body: some View {
        VStack {
            Button("Show alert") {
                self.message = Message(text: "Hi!")
            }
        }.alert(item: $message) { message in
            Alert(
                title: Text(message.text),
                dismissButton: .cancel()
            )
        }
    }
}

struct AlertExample_Previews: PreviewProvider {
    static var previews: some View {
        AlertExample()
    }
}
