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
    
    @State var currentPizza: String = "stock-photo-pizza-729409927"
   // @State var currentPizza: Pizza = .init(breadName: "stock-photo-pizza-729409927")
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
                
                let size = proxy.size
                
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
                                
                                //Topopings view
                                ToppingsView(toppings: pizza.toppings, pizza: pizza, width: (size.width / 2) - 45 )
                            //    ToppingsView(toppings: pizza.toppings, pizza: pizza, width: (size.width / 2) - 45)
                            }
                            
                            //changing pizza size.. ))
                            .scaleEffect(currentSize == .large ? 1 : (currentSize == .medium ? 0.95 : 0.9))
                            .tag(pizza.breadName)
                            
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
            
            ScrollViewReader{proxy in
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
                                         .opacity(isAdded(topping: topping) ? 0.15 : 0)
                                         .animation(.easeInOut, value: currentPizza)
                                 )
                                 .padding()
                                 .contentShape(Circle())
                                 .onTapGesture {
                                     
                                     if isAdded(topping: topping){
                                         
                                         //getting index and removing it....
                                         
                                         if let index = pizzas[getIndex(breadName: currentPizza)].toppings.firstIndex(where:  {
                                             currentTopping in
                                             return topping == currentTopping.toppingName
                                         }){
                                             pizzas[getIndex(breadName: currentPizza)].toppings.remove(at: index)
                                             
                                         }
                                     }
                                         
                                     
                                     
                                     
                                     // Creating some random position..
                                     var positions: [CGSize] = []
                                     
                                     for _ in 1...20{
                                     positions.append(.init(width: .random(in: -20...60),height: .random(in: -45...45)))
                                     }
                                     
                                     //Adding topping
                                     // Finding Index and adding the Topping
                                     
                                     let toppingObject = Topping(toppingName: topping,randomToppngPositions: positions)
                                     withAnimation{
                                         pizzas[getIndex(breadName: currentPizza)].toppings.append(toppingObject)
                                     }
                                     
                                 }
                                 .tag(topping)
                         }
                     }
                }
                    // .padding()
                     .onChange(of: currentPizza) { _ in
                         withAnimation{
                         proxy.scrollTo(toppings.first ?? "", anchor: .leading)
                     
                         }
                 }
            }
             
            /*
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
                                    .opacity(isAdded(topping: topping) ? 0.15 : 0)
                                    .animation(.easeInOut, value: currentPizza)
                            )
                            .padding()
                            .contentShape(Circle())
                            .onTapGesture {
                                
                                if isAdded(topping: topping){
                                    
                                    //getting index and removing it....
                                    
                                    if let index = pizzas[getIndex(breadName: currentPizza)].toppings.firstIndex(where:  {
                                        currentTopping in
                                        return topping == currentTopping.toppingName
                                    }){
                                        pizzas[getIndex(breadName: currentPizza)].toppings.remove(at: index)
                                        
                                    }
                                }
                                    
                                
                                
                                
                                // Creating some random position..
                                var positions: [CGSize] = []
                                
                                for _ in 1...20{
                                positions.append(.init(width: .random(in: -20...60),height: .random(in: -45...45)))
                                }
                                
                                //Adding topping
                                // Finding Index and adding the Topping
                                
                                let toppingObject = Topping(toppingName: topping,randomToppngPositions: positions)
                                withAnimation{
                                    pizzas[getIndex(breadName: currentPizza)].toppings.append(toppingObject)
                                }
                                
                            }
                    }
                }
               // .padding()
                
            }
             */
              
            //Add a cart Button
            Button {
                
            } label: {
                HStack(spacing: 15) {
                    Image(systemName: "cart.fill")
                        .font(.title2)
                    
                    Text("Add to cart")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.white)
                .padding(.vertical, 12)
                .padding(.horizontal, 30)
                .background(Color("Brown"),in: RoundedRectangle(cornerRadius: 15))
            }
            // making to take all avial
            .frame(maxHeight: .infinity, alignment: .center)
    }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
}
    
   
        func isAdded(topping: String) -> Bool {
            let status = pizzas[getIndex(breadName: currentPizza)].toppings.contains { currentTopping in
                return currentTopping.toppingName == topping
            }
            return status
        }
    
    
    func getIndex(breadName: String) -> Int {
        let index = pizzas.firstIndex{ pizza in
            return pizza.breadName == breadName
        } ?? 0
        return index
    }
    
    @ViewBuilder
    func  ToppingsView(toppings: [Topping],pizza: Pizza,width: CGFloat)-> some View {
        Group{
            
            ForEach(toppings.indices,id: \.self){index in
                
            // Each topping consists of 10 topping images
                let topping = toppings[index]
                ZStack {
            
                    //Adding more topping images...
                    // with an illusion..............
                    
            ForEach(1...20,id: \.self){subIndex in
                
                // 360/10 = 36
                let rotation: Double = Double(subIndex) * 36//
                let crtIndex = (subIndex > 10 ? (subIndex - 10) : subIndex)
             //   subIndex in
                Image("\(topping.toppingName)_\(crtIndex)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                
                //since index starts from 0....
                
                    .offset(x: (width / 2) - topping.randomToppngPositions[subIndex - 1].width, y: topping.randomToppngPositions[subIndex - 1].height)
                    .rotationEffect(.init(degrees: rotation))
                //Spreading Topping into random positions in 360 rotation.....
            }
            }
                //adding Scaling Animation
                //Triggering Scaling animation when the topping is added....
                .scaleEffect(topping.isAdded ? 1 : 10, anchor: .center)
                .onAppear {
                    
                 //   DispatchQueue.main.asyncAfter(deadline: .now(), + 0.08){
                    
                    withAnimation{
        pizzas[getIndex(breadName: pizza.breadName)].toppings[index].isAdded = true
                 //    }
                }
                }
            }
            
        }
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

