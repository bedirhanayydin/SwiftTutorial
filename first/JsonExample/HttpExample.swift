import SwiftUI

struct HttpExample: View {
    @State private var responseData: Data?
    @State private var responseString: String = "" // Ekledik
    
    var body: some View {
        VStack {
            Text("HTTP İstek Sonucu: \(responseString)") // Değiştirdik
                .padding()
           
        }.onAppear{
            fetchData()
        }
    }
    
    func fetchData() {
        let urlString = "https://jsonplaceholder.typicode.com/todos/2"
        if let url = URL(string: urlString) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("HTTP isteği hatası: \(error.localizedDescription)")
                } else if let data = data {
                    DispatchQueue.main.async {
                        self.responseData =  data
                        self.responseString =  String(data: data, encoding: .utf8) ?? ""
                    }
                }
            }.resume()
        } else {
            print("Geçersiz URL")
        }
    }
}

struct HttpExample_Previews: PreviewProvider {
    static var previews: some View {
        HttpExample()
    }
}
