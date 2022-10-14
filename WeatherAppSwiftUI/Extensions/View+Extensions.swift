//
//  View+Extensions.swift
//  WeatherAppSwiftUI
//
//  Created by MBAYE Libasse on 14/10/22.
//

import Foundation
import SwiftUI

extension View {
    
    func embedInNavigationView() -> some View {
        return NavigationView { self }
    }
    
}
