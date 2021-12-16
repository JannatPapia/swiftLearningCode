//
//  ContentView.swift
//  WeatherApp
//
//  Created by Jannatun Nahar Papia  on 16/12/21.
//

import SwiftUI

struct ContentView: View {
    //initial locationmanager
    @StateObject var locationManager = LocationManager()
    var body: some View {
       // Text("Hello, world!")
        VStack {
            //use else if statement cz location is optional
            
            if let location = locationManager.location {
                Text("Your coordinate are: \(location.longitude), \(location.latitude)")
            }
                  else{
                      if locationManager.isLoading {
                          // add loading option
                          // call loadingview
                          // we get our location to our phone
                          LoadingView()
                      }
                      else {
                          WelcomeView().environmentObject(locationManager)
                      }
                      }
                          
                      
             }
                
            
           // WelcomeView().environmentObject(locationManager)
      //  }
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .preferredColorScheme(.dark)
           // .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
