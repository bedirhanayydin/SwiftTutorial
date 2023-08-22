//
//  SearchableList.swift
//  SearchableDemo
//
//  Created by Simon Ng on 5/8/2022.
//

import SwiftUI

struct ListExample: View {
    @State var articles = sampleArticles
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(articles) { article in
                    ArticleRow(article: article)
                }
                
                .listRowSeparator(.hidden)
                
            }
            .listStyle(.plain)
            
            .navigationTitle("AppCoda")
            
        }
    }
}

struct ListExample_Previews: PreviewProvider {
    static var previews: some View {
        ListExample()
    }
}

struct ArticleRow: View {
    let article: Article
    
    var body: some View {
        HStack(alignment: .top) {
            AsyncImage(url: URL(string: article.imageURL)) { image in
                image
                    .resizable()
                    .scaledToFill()
                
            } placeholder: {
                Color.purple.opacity(0.1)
            }
            .frame(width: 100, height: 100)
            .cornerRadius(20)
            
            Text(article.title)
                .font(.system(.headline, design: .rounded))
            
        }
    }
}
