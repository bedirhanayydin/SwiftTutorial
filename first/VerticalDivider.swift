//
//  VerticalDivider.swift
//  first
//
//  Created by bedirhan on 7.08.2023.
//

import SwiftUI

struct VerticalDivider: View {
    
    let color: Color
    let width: CGFloat
    
    init(color: Color, width: CGFloat = 0.5) {
        self.color = color
        self.width = width
    }
    
    var body: some View {
        color
            .frame(width: width)
    }
}

 
