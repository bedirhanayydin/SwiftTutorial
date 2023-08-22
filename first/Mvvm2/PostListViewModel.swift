//
//  PostListViewModel.swift
//  first
//
//  Created by bedirhan on 22.08.2023.
//

import Foundation
import Combine

class PostListViewModel: ObservableObject {
    // ObservableObject, SwiftUI tarafından izlenen ve güncellenen özellikler için gereklidir.
    
    @Published var posts: [PostModel] = []
    // SwiftUI'ye bildirerek güncellemeleri tetiklemek için kullanılacak gönderilmiş (published) özellik.
    
    private var cancellables: Set<AnyCancellable> = []
    // Combine framework'ünden gelen yayınları iptal etmek için kullanılacak koleksiyon.
    
    func fetchPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        // İstek yapılacak URL'yi oluşturuyoruz.
        
        URLSession.shared.dataTaskPublisher(for: url)
        // URLSession tarafından sağlanan Combine entegrasyonunu kullanarak veri yayınını alıyoruz.
        
            .map(\.data)
        // Veriyi alıp .data parçasını kullanıyoruz.
        
            .decode(type: [PostModel].self, decoder: JSONDecoder())
        // Veriyi [Post] dizisine çözüyoruz. JSONDecoder kullanarak decode ediyoruz.
        
            .replaceError(with: [])
        // Herhangi bir hata olursa, hata yerine boş bir dizi ile değiştiriyoruz.
        
            .receive(on: DispatchQueue.main)
        // Alınan veriyi ana kuyruğa döndürüyoruz, çünkü arayüz güncellemeleri ana kuyrukta gerçekleşmelidir.
        
            .sink(receiveValue: { [weak self] fetchedPosts in
                self?.posts = fetchedPosts
                // Yayından gelen veriyi alıp ViewModel'in posts özelliğine atıyoruz.
                // [weak self] kullanarak güçlü bir referans döngüsü oluşturmaktan kaçınıyoruz.
            })
            .store(in: &cancellables)
        // Oluşturulan yayını iptal etmek için Set<AnyCancellable> koleksiyonuna ekliyoruz.
    }
}
