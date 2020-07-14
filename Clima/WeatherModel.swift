//
//  WeatherModel.swift
//  Clima
//
//  Created by Lena Porina on 7/13/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionID: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionID {
        case 200...232:
            return "bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "snow"
        case 701...781:
            return "cloud.fog"
        case 801...804:
            return "cloud"
        case 800:
            return "sun.max"
        default:
            return "cloud.sun"
        }
    }
    
}
