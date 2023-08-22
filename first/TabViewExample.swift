//
//  TabViewExample.swift
//  first
//
//  Created by bedirhan on 18.08.2023.
//

import SwiftUI

struct TabViewExample: View {
    let url="https://netix.com.tr/wp-content/uploads/2022/05/netix-logo-tr-renkli-1.png"
    var body: some View {
        TabView {
            Text("Home Tab")
                .font(.system(size: 35, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                };
            AsyncImage(url: URL(string: url) )
                .frame(width: 333, height: 450)
                .background(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                .font(.system(size: 35, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "house.circle")
                    Text("Home")
                }
        }
    }
}

struct TabViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExample()
    }
}
