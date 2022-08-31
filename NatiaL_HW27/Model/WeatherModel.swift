//
//  Model.swift
//  NatiaL_HW27
//
//  Created by Natia's Mac on 30.08.22.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: MainWeather
    let name: String
    let weather: [WeatherDescr]
}
struct WeatherDescr: Decodable {
    let description: String
}
struct MainWeather: Decodable {
    let temp, humidity : Double
}

