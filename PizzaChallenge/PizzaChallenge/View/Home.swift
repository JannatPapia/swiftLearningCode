//
//  Home.swift
//  PizzaChallenge
//
//  Created by Jannatun Nahar Papia  on 19/12/21.
//

import SwiftUI

struct Home: View {
    @State  var pizzas: [Pizza] = [
        
        Pizza(breadName: "stock-photo-pizza-729409927"),
        Pizza(breadName: "stock-photo-pizza-729409927"),
        Pizza(breadName: "stock-photo-pizza-729409927"),
        Pizza(breadName: "stock-photo-pizza-729409927"),
        Pizza(breadName: "stock-photo-pizza-729409927"),
   ]
    
    @State var currentPizza: Pizza = .init(breadName: "stock-photo-pizza-729409927")
    @State var currentSize: PizzaSize = .medium
    
    // To add smooth slide effect
    @Namespace var animation
    
    let toppings: [String] = [ "delicious-broccoli" ,"delicious-broccoli", "delicious-broccoli", "delicious-broccoli" , "delicious-broccoli"]
    
    var body: some View {
        
        VStack {
            
            // Nav bar
            HStack {
                
                Button {
                    
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.title2)
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                Button {
                    
                    
                } label: {
                    Image(systemName: "suit.heart.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                }
                
            }
        
      //  Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        .overlay(
        
            Text("Pizza")
                .font(.title2.bold())
                .foregroundColor(.black)
        )
        
        .padding()
            
            //pizza view
            GeometryReader {proxy in
                
                let _ = proxy.size
                
                ZStack{
                    
                    Image("stock-photo-pizza-729409927")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 30)
                        .padding(.vertical)
                    
                    // showing Bread in swipeable tabs ..
                    TabView(selection: $currentPizza) {
                        ForEach(pizzas){pizza in
                            
                            ZStack{
                                Image(pizza.breadName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(40)
                            }
                            
                            //changing pizza size.. ))
                            .scaleEffect(currentSize == .large ? 1 : (currentSize == .medium ? 0.95 : 0.9))
                            /*
                            Image(pizza.breadName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(40)
                             */
                        }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .never))
                }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                
            }
            .frame(height: 300)
            
            // price....
            Text("$17")
                .font(.title.bold())
                .foregroundColor(.black)
                .padding(.top,10)
            
            //Pizza Size...
            
            HStack(spacing: 20) {
                ForEach(PizzaSize.allCases,id: \.rawValue) {size in
                    
                    Button {
                        withAnimation{
                            currentSize = size
                        }
                    }label: {
                        Text(size.rawValue)
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding()
                            .background(
                                ZStack {
                                    if currentSize == size{
                                        Color.white
                                            .clipShape(Circle())
                                        // Shadows ..
                                        
                                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                                            .shadow(color: Color.black.opacity(0.03), radius: 5, x: -5, y: -5)
                                            .matchedGeometryEffect(id: "SIZEINDICATOR", in: animation)
                                    }
                                }
                                /*
                                Color.white
                            .clipShape(Circle())
                         Shadows ..
                        
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.black.opacity(0.03), radius: 5, x: -5, y: -5)
                                            .opacity(currentSize == size ? 1 : 0)
                         */
                        )
                    }
                    
                }
            }
            .padding(.top, 10)
            
            //custom toppings
            
            Text("CUSTOMIZE YOUR PIZZA")
                .font(.caption)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top,25)
                .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack(spacing: -10){
                    
                    ForEach(toppings,id: \.self) {topping in
                        
                        //displaying topping image
                        //there are total 10 toppings images available for each topping
                        //we simply showing 3rd image as a mai image
                        Image("\(topping)_3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            .padding(12)
                            .background(
                                Color.green
                                    .clipShape(Circle())
                                    .opacity(0.15)
                            )
                            .padding()
                            .contentShape(Circle())
                            .onTapGesture {
                                //Adding topic
                                
                            }
                    }
                }
               // .padding()
                
            }
            
    }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
}
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

// To iterate in ForEach

enum PizzaSize: String,CaseIterable{
    case small = "S"
    case medium = "M"
    case large = "L"
}

