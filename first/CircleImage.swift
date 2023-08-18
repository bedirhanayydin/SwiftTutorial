//
//  CircleImage.swift
//  first
//
//  Created by bedirhan on 4.08.2023.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Image")
            .resizable() // Resmi boyutlandırılabilir hale getirir
            .frame(width: 100, height: 100) // İstenilen genişlik ve yükseklik değerlerini verin
        
            .clipShape(Circle())
            .overlay { Circle().stroke(.red, lineWidth: 6)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
