//
//  SwipeCardExample.swift
//  first
//
//  Created by bedirhan on 16.08.2023.
//

import SwiftUI

struct SwipeCardExample: View {
    @State var user: Userlist?
    
    var body: some View {
        VStack {
            ZStack {
                ForEach(users) { rs in
                    CardView(viewdata: rs)
                }
            }
        }
    }
}

struct SwipeCardExample_Previews: PreviewProvider {
    static var previews: some View {
        SwipeCardExample()
    }
}
