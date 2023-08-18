//
//  CarouselViewExample.swift
//  first
//
//  Created by bedirhan on 17.08.2023.
//

import SwiftUI

struct CarouselViewExample: View {
    @State private var index = 0
    let images = [1,2,3,4,5,6]
    public let timer = Timer.publish(every: 3, on: .main, in: .common)
    @State private var selection = 0
    
    var body: some View {
        VStack {
            TabView {
                ForEach(0..<images.count,id: \.self) { i in
                    Image("\(images[i])").resizable(capInsets: EdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2),resizingMode: .stretch)
                }
            }.tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }.ignoresSafeArea()
    }
}

struct CarouselViewExample_Previews: PreviewProvider {
    static var previews: some View {
        CarouselViewExample()
    }
}
