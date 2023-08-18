//
//  RestaurantViewExample.swift
//  first
//
//  Created by bedirhan on 17.08.2023.
//

import SwiftUI

struct RestaurantViewExample: View {
     let jsonDataString = """
        {
            "name": "My Restaurant",
            "location": {
                "latitude": 40.7128,
                "longitude": -74.0060
            },
            "meals": ["breakfast", "lunch"]
        }
        """
    
    var body: some View {
            Text("JSON ile Çalışma")
                .onAppear {
                    if let data = jsonDataString.data(using: .utf8) {
                        do {
                            let restaurant = try JSONDecoder().decode(Restaurant.self, from: data)
                            print("Restoran Adı: \(restaurant.name)")
                            print("Konumu: \(restaurant.location.latitude), \(restaurant.location.longitude)")
                            print("Öğünler: \(restaurant.meals)")
                        } catch {
                            print("JSON çözme hatası: \(error)")
                        }
                    }
                }
    }
}

struct RestaurantViewExample_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantViewExample()
    }
}
