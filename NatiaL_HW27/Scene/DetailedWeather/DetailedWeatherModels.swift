//
//  DetailedWeatherModels.swift
//  NatiaL_HW27
//
//  Created by Natia's Mac on 31.08.22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum DetailedWeather
{
  // MARK: Use cases
  
  enum ShowWeatherDetails
  {
    struct Request
    {
    }
    struct Response
    {
        let weatherResponse: WeatherResponse
    }
    struct ViewModel
    {
        let name: String
        let temp: Double
        let humidity: Double
        let desc: String
    }
  }
}