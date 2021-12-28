//
//  ListRowView.swift
//  Todo list
//
//  Created by Jannatun Nahar Papia  on 28/12/21.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
           // Text("this is our first item!")
            Text(title)
            Spacer()
            //  Text("this is our first item!")
            
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "This is the first title!")
    }
}
