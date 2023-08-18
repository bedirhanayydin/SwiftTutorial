//
//  BreweriesViewModel.swift
//  first
//
//  Created by bedirhan on 15.08.2023.
//

import Foundation
import Combine

class BreweriesViewModel: ObservableObject {
    private let url = "https://api.openbrewerydb.org/breweries"
    private var task: AnyCancellable?
    
    @Published var breweries: [Brewery] = []

    func fetchBreweries() {
        // URLSession.shared.dataTaskPublisher ile HTTP isteği yapılıyor.
        // Bu istek veri döndürdüğünde, Combine framework'ü kullanılarak işlenecek.
        task = URLSession.shared.dataTaskPublisher(for: URL(string: url)!)
            .map { $0.data } // Gelen veriyi alır.
            .decode(type: [Brewery].self, decoder: JSONDecoder()) // JSON verisini [Brewery] tipine çevirir.
            .receive(on: RunLoop.main) // Sonraki işlemleri ana iş parçacığında (UI iş parçacığı) gerçekleştirir.
            .sink(receiveCompletion: { completion in // Veri akışının tamamlandığında veya hata aldığında çalışır.
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print("Error: \(error)")
                }
            }, receiveValue: { [weak self] breweries in // Veriyi başarıyla aldığında çalışır.
                self?.breweries = breweries // breweries dizisini günceller.
            })
    }
}

//ObservableObject protokolünü uygular ve Combine framework'ü kullanılarak verileri asenkron olarak almayı ve güncellemeyi amaçlar.
//url: API'ye yapılan isteğin hedef URL'sini içerir.
//task: API isteğini temsil eden bir AnyCancellable nesnesi (geciktirilebilir) olarak tanımlanır. Bu, isteğin iptal edilebilmesi ve hafızada sızıntı olmaması için kullanılır.
//@Published var breweries: SwiftUI'nin otomatik güncellemeyi sağlaması için kullanılan, API'den alınan breweries listesini içeren bir yayınlanan özelliktir.
//fetchBreweries(): API isteğini yapmak için kullanılan bir fonksiyondur. Combine operatörleri kullanarak veri akışını işler.
//Bu kod, Combine operatörlerini kullanarak bir API isteğini yapar, veriyi alır, çözümleyip [Brewery] türüne çevirir ve sonunda bu veriyi breweries özelliğine atayarak SwiftUI görünümlerini günceller.
//@EnvironmentObject, SwiftUI framework'ünün bir parçası olan bir özelliktir. Bu özellik, bir nesnenin (genellikle bir model veya veri deposu) bir görünüm hiyerarşisinde paylaşılmasını sağlar. @EnvironmentObject ile işaretlenen bir nesne, alt görünümler tarafından erişilebilir hale gelir ve bu sayede veri paylaşımı yapılabilir.
//@StateObject, SwiftUI framework'ünün bir parçası olarak kullanılan bir özelliktir. Bu özellik, bir görünümün ömrü boyunca sadece bir kez oluşturulacak olan bir nesnenin yönetilmesini sağlar. @StateObject ile işaretlenen nesne, görünümdeki değişikliklerden etkilenmeden korunur ve görünüm yeniden oluşturulsa bile aynı nesne kullanılmaya devam eder.
//@ObservedObject, SwiftUI framework'ünün bir parçası olarak kullanılan bir özelliktir. Bu özellik, bir görünümde kullanılan bir nesnenin değişikliklerini takip etmek ve bu nesne içindeki verilerde meydana gelen güncellemeleri algılamak için kullanılır. Genellikle ObservableObject protokolünü uygulayan sınıflar ile birlikte kullanılır.
