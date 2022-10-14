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
