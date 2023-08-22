//
//  ShareLinkExample.swift
//  first
//
//  Created by bedirhan on 22.08.2023.
//

import SwiftUI

struct ShareLinkExample: View {
    private let url = URL(string: "https://www.github.com")!

    var body: some View {
        ShareLink(item: url) {
            Label("Tap me to share", systemImage:  "square.and.arrow.up")
        }    }
}

struct ShareLinkExample_Previews: PreviewProvider {
    static var previews: some View {
        ShareLinkExample()
    }
}
