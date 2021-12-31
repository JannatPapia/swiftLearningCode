//
//  ListView.swift
//  Todo list
//
//  Created by Jannatun Nahar Papia  on 28/12/21.
//

import SwiftUI

struct ListView: View {
    
   @EnvironmentObject var listViewModel: ListViewModel
    
    /*
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first title!", isCompleted: false),
        ItemModel(title: "This is the first second!", isCompleted: true),
        ItemModel(title: "Third", isCompleted: false),

      //"This is the first title!",
      //"This is the second!",
     // "Third!"
    ]
    */
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                  ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear){
                            listViewModel.updateItem(item: item)
                        }
                    }
               // Text("Hi")
          //  ForEach(items, id: \.self) {item in
               // ListRowView(title: item)
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem )
           // ListRowView(title: "This is the first title!")
      //  Text("Hello, World!")
          //  HStackExtractedView()
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView())
                            )
    }
    /*
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)

    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    */
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        .environmentObject(ListViewModel())
    }
}


