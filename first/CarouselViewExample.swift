//
//  CarouselViewExample.swift
//  first
//
//  Created by bedirhan on 17.08.2023.
//

import SwiftUI

struct CarouselViewExample: View {
    var body: some View {
        HStack(spacing: 2) {
            ForEach((0..<3), id: \.self) { index in
                Rectangle()
                    .fill(index == self.index ? Color.purple : Color.purple.opacity(0.5))
                    .frame(width: 30, height: 5)
                
            }
        }
        .padding()
    }
}

struct CarouselViewExample_Previews: PreviewProvider {
    static var previews: some View {
        CarouselViewExample()
    }
}
