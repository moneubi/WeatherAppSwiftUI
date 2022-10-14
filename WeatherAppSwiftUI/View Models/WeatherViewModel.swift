//
//  WeatherViewModel.swift
//  WeatherAppSwiftUI
//
//  Created by MBAYE Libasse  on 14/10/2022.
//

import Foundation

struct WeatherViewModel{
    
    let weather: Weather
    
    let id = UUID()
    
    func getTemperatureByUnit(unit: TemperatureUnit) -> Double{
        
        switch unit {
            case .celsius:
                return weather.temperature - 273.15
            case .fahrenheit:
                return ((weather.temperature - 273.15) * 1.8) + 32
            case .kelvin:
                return weather.temperature
        }
    }

    var temperature: Double{
        weather.temperature
    }
    
    var city: String{
        weather.city
    }
    
    var sunrise: Date{
        weather.sunrise
    }
    
    var sunset: Date{
        weather.sunset
    }
}
