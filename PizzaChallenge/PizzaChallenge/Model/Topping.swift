//
//  Topping.swift
//  PizzaChallenge
//
//  Created by Jannatun Nahar Papia  on 19/12/21.
//

import SwiftUI

// Toping model

struct Topping: Identifiable{
    var id = UUID().uuidString
    var toppingName: String
    var isAdded: Bool = false
    var randomToppngPositions: [CGSize] = []
}
