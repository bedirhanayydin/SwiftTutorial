//
//  ContextMenu.swift
//  first
//
//  Created by bedirhan on 16.08.2023.
//

import SwiftUI

struct ContextMenu: View {
    var body: some View {
        Text("Context Menu!")
            .contextMenu {
                Button {
                    print("Change country setting")
                } label: {
                    Label("Choose Country", systemImage: "globe")

                }
                Button {
                    print("Enable geolocation")
                } label: {
                    Label("Detect Location", systemImage: "location.circle")
                }

            }
    }
}

struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
