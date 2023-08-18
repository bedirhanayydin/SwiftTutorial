//
//  FoodModel.swift
//  first
//
//  Created by bedirhan on 18.08.2023.
//

struct Food: Codable {
    
    // MARK: - Properties
    
    /// The name of the food.
    var name: String
    /// Whether this is the user's favorite food.
    var favorite: Bool

    /// An emoji representing the food item.
    var emoji: String {
        if name.contains("apple") {
            return "🍎"
        } else if name.contains("taco") {
            return "🌮"
        } else if name.contains("banana") {
            return "🍌"
        } else if name.contains("soup") {
            return "🍜"
        } else {
            return "🍴"
        }
    }
    
    // MARK: - Methods
    
    /**
     Eat the food.
     */
    func eat() {
        // ...
    }
}
