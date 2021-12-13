//
//  ContentView.swift
//  colours
//
//  Created by Jannatun Nahar Papia  on 13/12/21.
//

import SwiftUI

struct ContentView: View {
    // create a struct fnction
    // return double type this is  0 and 1
    static func randomiser() -> Double {
        return Double.random(in: 0..<1)
    }
    
      @State var redActual = randomiser() // verious colour red,green,blue
       @State var greenActual = randomiser()
       @State var blueActual = randomiser()
    
      @State var redSlider: Double // need redslider with double
      @State var greenSlider: Double
      @State var blueSlider: Double
    
      @State var showAlert = false
    
       // create a function for reset
    func reset(){
        redActual = ContentView.randomiser()
        greenActual = ContentView.randomiser()
        blueActual = ContentView.randomiser()
        
        blueSlider = 0.0
        redSlider = 0.0
        greenSlider = 0.0
        
    }
    
    func stars() -> String {
        let difference = Int(abs((redActual * 255) * (blueActual * 255) * (greenActual * 255) - (redSlider * 255) * (blueSlider * 255) * (greenSlider * 255)))
        
        if (difference < 4194304) {
            return "⭐️⭐️⭐️⭐️"
        }
        else if (difference < 8388608) {
            return "⭐️⭐️⭐️"
        }
        else if (difference < 12582912)
        {
            return "⭐️⭐️"
        }
        else {
            return "⭐️"
        }
    }
    
    
    
    
    var body: some View {
        VStack(spacing: 20){ //// adding text (match this colour) and bold it
            Text("Match this Color").font(.largeTitle).bold()
            HStack{
                //put the color
                Circle().fill(Color(red: redActual, green: greenActual, blue: blueActual))
                    .padding() //adding 2 color circle
                Circle()
                    .fill(Color(red: redSlider, green: greenSlider, blue: blueSlider))
                    .padding()

            }
            Sliders(value: $redSlider, color: .red, textColor: "Red")
            Sliders(value: $greenSlider, color: .green, textColor: "Green")
            Sliders(value: $blueSlider, color: .blue, textColor: "Blue")
            
            Button(action: {self.showAlert = true}) {
                Text("Submit")
            }.alert(isPresented: $showAlert){
                Alert(title: Text("Your Performance"), message: Text(stars()))
            }
            
            .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
                .background(Color(red: redActual, green: greenActual, blue: blueActual))
                .cornerRadius(.infinity)
                .foregroundColor(.white)
            
            
            Button(action: {self.reset()}) {
                Text("Reset")
            }.padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
                .background(Color(red: redSlider, green: greenSlider, blue: blueSlider))
                .cornerRadius(.infinity)
                .foregroundColor(.white)
            
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(redSlider: 0.0, greenSlider: 0.0, blueSlider: 0.0)
    }
}

struct Sliders: View {
    @Binding var value: Double
    var color: Color
    var textColor: String
    
    var body: some View {
        VStack{
            Text("\(textColor) (\(Int(value * 255) ))").font(.largeTitle)
            Slider(value:$value).accentColor(color)
                .padding()
        }
    }
}
