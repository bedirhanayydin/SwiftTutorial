//
//  LazyVHGridExample.swift
//  first
//
//  Created by bedirhan on 18.08.2023.
//

import SwiftUI

struct LazyVHGridExample: View {
         let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3) // 3 sütunlu bir izgara oluşturuyoruz
        
        var body: some View {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) { // LazyVGrid kullanarak dikey izgara oluşturuyoruz
                    ForEach(1...30, id: \.self) { number in // 1'den 30'a kadar olan öğeleri dolaşıyoruz
                        Text("\(number)")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
 }

struct LazyVHGridExample_Previews: PreviewProvider {
    static var previews: some View {
        LazyVHGridExample()
    }
}
