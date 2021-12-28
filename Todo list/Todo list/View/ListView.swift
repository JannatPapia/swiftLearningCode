//
//  ListView.swift
//  Todo list
//
//  Created by Jannatun Nahar Papia  on 28/12/21.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
      "This is the first title!",
      "This is the second!",
      "Third!"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) {item in
                ListRowView(title: item)
            }
           // ListRowView(title: "This is the first title!")
      //  Text("Hello, World!")
          //  HStackExtractedView()
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView())
                            )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        
    }
}


