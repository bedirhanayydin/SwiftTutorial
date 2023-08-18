//
//  BottomSheetExample.swift
//  first
//
//  Created by bedirhan on 16.08.2023.
//

import SwiftUI

struct BottomSheetExample: View {
    @State var presentSheet=false
    var body: some View {
        NavigationView {
            Button("Modal") {
                presentSheet = true
            }
            .navigationTitle("Main")
        }.sheet(isPresented: $presentSheet) {
            Text("Detail")
                .presentationDetents([.medium, .large])
        }
    }
}

struct BottomSheetExample_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetExample()
    }
}
