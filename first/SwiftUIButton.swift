//
//  SwiftUIButton.swift
//  first
//
//  Created by bedirhan on 11.08.2023.
//

import SwiftUI
import Foundation

struct SwiftUIButton: View {
    @State private var petCount = 0

    var body: some View {
        VStack {
            Button(action: {}) {
                 Text("Hello World")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .padding(10)
                    .border(Color.purple, width: 5)
                    .cornerRadius(40)
            }
             HStack {
                Button(action: {}) {
                    Label("Sign In", systemImage: "arrow.up")
                }
                Button(role: .destructive) {
                } label: {
                    Label("Remove", systemImage: "trash")
                }
                // 3
                Button(role: .cancel) {
                } label: {
                    Label("Add", systemImage: "plus")
                }
                // 4
                Button {
                } label: {
                    Label("Share", systemImage: "square.and.arrow.up")
                }
            }
        
        }
    } }

struct SwiftUIButton_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIButton()
    }
}
