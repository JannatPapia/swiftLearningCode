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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
