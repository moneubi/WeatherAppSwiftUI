//
//  AddWeatherViewModel.swift
//  WeatherAppSwiftUI
//
//  Created by MBAYE Libasse  on 14/10/2022.
//

import Foundation

class AddWeatherViewModel: ObservableObject{
    
    var city: String = ""
    
    func save(completion: @escaping(WeatherViewModel) -> Void){
        
        Webservice().getWeatherByCity(city: city, completion: { (result) in
            
            switch result{
                
            case .success(let weather):
                DispatchQueue.main.async {
                    completion(WeatherViewModel(weather: weather))
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
    }
}
