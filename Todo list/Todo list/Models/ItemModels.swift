//
//  ItemModels.swift
//  Todo list
//
//  Created by Jannatun Nahar Papia  on 29/12/21.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString // use random string
    let title: String
    let isCompleted: Bool
}
