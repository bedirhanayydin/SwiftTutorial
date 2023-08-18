//
//  GestureExample.swift
//  first
//
//  Created by bedirhan on 16.08.2023.
//

import SwiftUI

struct GestureExample: View {
    @State private var isPressed = false

    var body: some View {
        Image(systemName: "star.circle.fill")
            .font(.system(size: 200))
            .foregroundColor(Color.red)
            .scaleEffect(isPressed ? 0.5 : 1.0)
            .animation(.easeInOut, value: isPressed)
            .gesture(TapGesture()
                .onEnded({
                    for i in 1...3 {
                        print(i)
                    }
                    print("Tapped!")
                    self.isPressed.toggle()
                })
            )
    }
}


struct GestureExample_Previews: PreviewProvider {
    static var previews: some View {
        GestureExample()
    }
}
