//
//  Date+Extensions.swift
//  WeatherAppSwiftUI
//
//  Created by MBAYE Libasse on 14/10/22.
//

import Foundation


extension Date {
    
    func formatAsString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        return formatter.string(from: self)
    }
    
}
