//
//  Http.swift
//  first
//
//  Created by bedirhan on 8.08.2023.
//

import SwiftUI


struct Http: View {
    @State private var data: [Post] = []
    
    var body: some View {
        List(data, id: \.id) { post in
            VStack(alignment: .leading) {
                Text(post.title)
                    .font(.headline)
                Text(post.body)
                    .font(.subheadline)
            }
        }
        .onAppear {
            fetchData()
        }
    }
    
    private func fetchData() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let posts = try JSONDecoder().decode([Post].self, from: data)
                    DispatchQueue.main.async {
                        self.data = posts // posts verileri alındığında ana iş parçacığında self.data güncellenir
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}

struct Post: Codable {
    let id: Int
    let title,
        body: String
}

class Posts:Codable {
    let id: UUID
    let title,
        body: String
}




struct Http_Previews: PreviewProvider {
    static var previews: some View {
        Http()
    }
}
