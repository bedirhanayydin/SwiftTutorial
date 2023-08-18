//
//  UserModel.swift
//  first
//
//  Created by bedirhan on 16.08.2023.
//

import Foundation
 
struct Userlist: Identifiable {
    
    let id: Int
    let username: String
    let photo : String
}

var users = [
    Userlist(id: 0, username: "Olivia", photo: "1"),
    Userlist(id: 1, username: "Emma", photo: "2"),
    Userlist(id: 2, username: "Ava", photo: "3"),
    Userlist(id: 3, username: "Charlotte", photo: "4"),
    Userlist(id: 4, username: "Sophia", photo: "5"),
    Userlist(id: 5, username: "Amelia", photo: "6"),
//   Restaurant(name: "My Restaurant", location: (1.1, 2.3), meals: [.breakfast, .lunch])
 ]
//struct Restaurant {
//    enum Meal: String {
//        case breakfast, lunch, dinner
//    }
//    
//    let name: String
//    let location: (latitude: Double, longitude: Double)
//    let meals: Set<Meal>
//}
