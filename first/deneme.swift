//
//  deneme.swift
//  first
//
//  Created by bedirhan on 11.08.2023.
//

import Foundation
extension Int {
    func topics(summation: () -> ()) {
        for _ in 0..<self {
            summation()
        }
    }
}

4.topics(summation: {
    print("Inside Extensions Block")
})

3.topics(summation: {
    print("Inside Type Casting Block")
})
