//
//  PopoverExample.swift
//  first
//
//  Created by bedirhan on 15.08.2023.
//

import SwiftUI

struct PopoverExample: View {
    @State private var showPopover: Bool = false
    
    var body: some View {
        VStack {
            Button("Show popover") {
                self.showPopover = true
            }.popover(
                isPresented: self.$showPopover,
                arrowEdge: .bottom
            
            ) { Text("Popover") }
        }
    }
}

struct PopoverExample_Previews: PreviewProvider {
    static var previews: some View {
        PopoverExample()
    }
}
