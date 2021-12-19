//
//  Pizza.swift
//  PizzaChallenge
//
//  Created by Jannatun Nahar Papia  on 19/12/21.
//

import SwiftUI

// pizza model and simple pizzas..
struct Pizza: Identifiable{
    var id = UUID().uuidString
    var breadName: String
    var toppings: [Topping] = []
}


