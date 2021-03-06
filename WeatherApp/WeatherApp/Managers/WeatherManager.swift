//
//  WeatherManager.swift
//  WeatherApp
//
//  Created by Jannatun Nahar Papia  on 17/12/21.
//

import Foundation
import CoreLocation

class WeatherManager {
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> ResponseBody {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=23.8103&lon=90.4125&appid=941bc3dac3c5a737a992e46859d45a3d&units=metric") else {
            fatalError("Missing URL")
        }
        let urlRequest = URLRequest(url: url)
        
        let (data, respons) = try await URLSession.shared.data(for: urlRequest)
        // make sure response
        guard (respons as? HTTPURLResponse)?.statusCode  == 200 else { fatalError("Error fetching weather data")}
        
        let decodeData = try JSONDecoder().decode(ResponseBody.self, from: data)
        
        return decodeData
    }
}

struct ResponseBody: Decodable {
    var coord: CoordinatesResponse
    var weather: [WeatherResponse]
    var main: MainResponse
    var name: String
    var wind: WindResponse
    
    struct CoordinatesResponse: Decodable {
        var lon: Double
        var lat: Double
    }
    
    struct WeatherResponse: Decodable {
        var id: Double
        var main: String
        var description: String
        var icon: String
    }
    
    struct MainResponse: Decodable {
        var temp: Double
        var feels_like: Double
        var temp_min: Double
        var temp_max: Double
        var pressure: Double
        var humidity: Double
    }
    
    struct WindResponse: Decodable {
        var speed:Double
        var deg: Double
    }
}

extension ResponseBody.MainResponse {
    var feelsLike: Double { return feels_like}
    var tempMin:  Double { return temp_min}
    var tempMax: Double { return temp_max}
}























