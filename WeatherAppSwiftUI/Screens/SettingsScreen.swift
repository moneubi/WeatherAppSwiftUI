//
//  SettingsScreen.swift
//  WeatherAppSwiftUI
//
//  Created by MBAYE Libasse on 14/10/22.
//

import SwiftUI

enum TemperatureUnit: String, CaseIterable, Identifiable {
    
    var id: String {
        return rawValue
    }
    
    case celsius
    case fahrenheit
    case kelvin
}

extension TemperatureUnit {
    
    var displayText: String {
        switch self {
            case .celsius:
                return "Celsius"
            case .fahrenheit:
                return "Fahrenheit"
            case .kelvin:
                return "Kelvin"
        }
    }
    
}

struct SettingsScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    //@State private var selectedUnit: TemperatureUnit = .kelvin
    @AppStorage("unit") private var selectedUnit: TemperatureUnit = .kelvin
    @EnvironmentObject var store: Store
    
    var body: some View {
        VStack {
            Picker(selection: $selectedUnit, label: Text("Select temperature unit?")) {
                ForEach(TemperatureUnit.allCases, id: \.self) {
                    Text("\($0.displayText)" as String)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Spacer()
        }
        .padding()
        .navigationTitle("Settings")
        .navigationBarItems(trailing: Button("Done") {
            
            mode.wrappedValue.dismiss()
            store.selectedUnit = selectedUnit
        })
        .embedInNavigationView()
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
