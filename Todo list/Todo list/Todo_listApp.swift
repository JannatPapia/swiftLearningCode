//
//  Todo_listApp.swift
//  Todo list
//
//  Created by Jannatun Nahar Papia  on 28/12/21.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
 */

@main
struct Todo_listApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
           
        }
    }
}
