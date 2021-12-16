//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Jannatun Nahar Papia  on 16/12/21.
//

import SwiftUI
import CoreLocationUI // add corelocationUI .cz the locationButton comes in this framework

struct WelcomeView: View {
    // adding environmentobject for location manager
    
    @EnvironmentObject var locationManager: LocationManager
     
    
    var body: some View {
        VStack {
            VStack(spacing: 20) { // crreate another VStack for title
                 Text("Welcome to the Weather App")
                    .bold().font(.title) // for bold the title
                //create another title
                Text("Please share your current location to get the weather in your area")
                    .padding()
            }
            // create a multilinetextalignment for center cz everything will be center
            .multilineTextAlignment(.center)
            .padding() // use padding for surrounding the VStack
            
            // add a locationbutton
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation() // call requesrtlocation
                
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white) // formal color 
            
        }
        // frame takes the whole screen
        .frame(maxWidth: .infinity, maxHeight: .infinity)
       // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
