//
//  RestaurantModel.swift
//  first
//
//  Created by bedirhan on 17.08.2023.
//

import Foundation

struct Restaurant:Codable {
    let name:String
    let location:Location
    let meals:[String]
}

struct Location:Codable {
    let latitude,
        longitude:Double
}
 
//{
//    "name": "My Restaurant",
//    "location": {
//        "latitude": 40.7128,
//        "longitude": -74.0060
//    },
//    "meals": ["breakfast", "lunch"]
//}
