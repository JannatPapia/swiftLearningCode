//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Jannatun Nahar Papia  on 17/12/21.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    
    var body: some View {
        
        ZStack(alignment: .leading){
            
            VStack {
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(weather.name)
                        .bold()
                        .font(.title)
                    
                    Text("Today,  \(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .fontWeight(.light)
                
                }
            //.padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            VStack {
                HStack {
                    VStack(spacing: 20){
                        //display symble
                        Image(systemName: "sun.max.fill")
                            .font(.system(size: 40))
                        //display weather condition
                        Text(weather.weather[0].main)//get the first of array
                    }
                    .frame(width: 150, alignment: .leading)
                    
                    Spacer()
                    
                    Text(weather.main.feelsLike.roundDouble() + "°")
                        .font(.system(size: 100))
                        .fontWeight(.bold)
                        .padding()
                   // Text(weather.main.feelsLike)
                       // .roundDouble() + "^"
                }
                
                Spacer()
                    .frame(height: 80)
                
                AsyncImage(url: URL(string: "https://i0.wp.com/www.uniquenewsonline.com/wp-content/uploads/2020/12/Sunny-Leone-hot-photos.png"))
                {
                    image in image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350)
                }placeholder: {
                    ProgressView()
                }
                Spacer()
            
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
             
            VStack {
                Spacer()
                VStack(alignment: .leading, spacing: 20){
                    Text("Weather Now")
                        .bold().padding(.bottom)
                    
                    HStack {
                        WeatherRow(logo: "thermometer", name: "Min temp", value: (weather.main.tempMin.roundDouble() + "°"))
                        
                        Spacer()
                        WeatherRow(logo: "thermometer", name: "Max temp", value: (weather.main.tempMax.roundDouble() + "°"))
                    }
                    
                    HStack {
                        WeatherRow(logo: "wind", name: "Wind Speed", value: (weather.wind.speed.roundDouble() + "m/s"))
                        
                        Spacer()
                        WeatherRow(logo: "humidity", name: "Humidity", value: (weather.main.humidity.roundDouble() + "%"))
                    }
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .padding(.bottom, 20)
                    .foregroundColor(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
                    .background(.white)
                    .cornerRadius(20, corners: [.topLeft, .topRight])
            }
            
            
            .edgesIgnoringSafeArea(.bottom)
            .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
            .preferredColorScheme(.dark)
       
        }
}
}
struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
