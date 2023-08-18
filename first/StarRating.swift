//
//  StarRating.swift
//  first
//
//  Created by bedirhan on 9.08.2023.
//

import SwiftUI

struct StarRatingView: View {
    @Binding var rating: Int
    private let maxRating = 5
    
    var body: some View {
        HStack {
            ForEach(1..<maxRating + 1, id: \.self) { value in
                Image(systemName: "star")
                    .symbolVariant(value <= rating ? .fill : .none)
                    .foregroundColor(.accentColor)
                    .onTapGesture {
                        if value != rating {
                            rating = value
                        } else {
                            rating = 0
                        }
                        
                    }
            }
        }
    }
}

struct StarRating: View {
    @State private var selectedRating = 0
    
    var body: some View {
        VStack {
            StarRatingView(rating: $selectedRating)
            Text("Selected Rating: \(selectedRating)")
        }
    }
}

struct StarRating_Previews: PreviewProvider {
    static var previews: some View {
        StarRating()
    }
}




