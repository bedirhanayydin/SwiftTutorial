//
//  TextFieldExample.swift
//  first
//
//  Created by bedirhan on 18.08.2023.
//

import SwiftUI

struct TextFieldExample: View {
    @State private var comment = ""
    
    var body: some View {
        VStack {
            TextField("Comment", text: $comment, prompt: Text("Please input your comment"), axis: .vertical)
                .padding()
                .background(Color.green.opacity(0.2))
                .cornerRadius(5.0)
                .lineLimit(3)
                .truncationMode(.tail)
            Text(comment)
                .lineLimit(3)
                .truncationMode(.tail)
                .fontWeight(.bold)
        }.padding()

    }
}

struct TextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExample()
    }
}
