//
//  AddView.swift
//  Todo list
//
//  Created by Jannatun Nahar Papia  on 28/12/21.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
            TextField("Type something here...",text: $textFieldText)
                .padding(.horizontal)
               .frame(height: 55)
               .background(Color(UIColor.systemGray4))
                .cornerRadius(10)
           // Text("Hi")
                Button(action: {
                    
                },label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
        }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖊 ")
      //  Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        
      
    }
}
