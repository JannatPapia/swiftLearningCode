//
//  ListViewModel.swift
//  Todo list
//
//  Created by Jannatun Nahar Papia  on 29/12/21.
//

import Foundation
import UIKit

/*
 CRUD FUNCTION
 
 Create
 Read
 Update
 Delete
 
 */

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    
    let itemsKey: String = "items_list"
    
    init() {
        getItems()
    }
    func getItems () {
        
     //   let newItems =  [
      //           ItemModel(title: "This is the first title!", isCompleted: false),
         //        ItemModel(title: "This is the first second!", isCompleted: true),
        //         ItemModel(title: "Third", isCompleted: false),
       //  ]
                //     items.append(contentsOf: newItems)
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data) 
        else { return }
        
        self.items = savedItems
      //  guard let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data) else { return }
        
        }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)

    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
       
        /*
        if let index = items.firstIndex{ ( existingItem) -> Bool
            return existingItem.id == item.id
        }
        {
            run this code
        }
         */
        
        if let index = items.firstIndex(where: {$0.id == item.id }) {
            items[index] = item.updateCompletion()
            //  items[index] = ItemModel(title: item.title, isCompleted: !item.isCompleted)
        }
    }
    
        func saveItems() {
            if let encodedData = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encodedData, forKey: itemsKey)
            }
        }
        
    }
    

