//
//  Store.swift
//  WeatherAppSwiftUI
//
//  Created by MBAYE Libasse  on 14/10/2022.
//

import Foundation

class Store: ObservableObject{
    
    @Published var weatherList: [WeatherViewModel] = [WeatherViewModel]()
    @Published var selectedUnit: TemperatureUnit = .kelvin
    
    func addWeather(_ weather: WeatherViewModel){
        
        weatherList.append(weather)
    }
}
