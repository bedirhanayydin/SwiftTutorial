//
//  SwipeActionsExample.swift
//  first
//
//  Created by bedirhan on 16.08.2023.
//

import SwiftUI

struct SwipeActionsExample: View {
    let friends = ["Antoine", "Bas", "Curt", "Dave", "Erica"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(friends, id: \.self) { friend in
                    Text(friend)
                        .swipeActions(allowsFullSwipe: false) {
                            Button {
                                print("Muting conversation")
                            } label: {
                                Label("Mute", systemImage: "bell.slash.fill")
                            }
                            .tint(.indigo)
                            
                            Button(role: .destructive) {
                                print("Deleting conversation")
                            } label: {
                                Label("Delete", systemImage: "trash.fill")
                            }
                        }
                }
            }
        }
    }
}

struct SwipeActionsExample_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionsExample()
    }
}
