//
//  PostModel.swift
//  first
//
//  Created by bedirhan on 22.08.2023.
//

import Foundation
import Combine
 
struct PostModel: Codable, Identifiable {
    let id: Int
    let title,
        body: String
}
