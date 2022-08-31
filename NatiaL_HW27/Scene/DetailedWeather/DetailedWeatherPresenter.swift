//
//  DetailedWeatherPresenter.swift
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

protocol DetailedWeatherPresentationLogic
{
  func presentWeatherInfo(response: DetailedWeather.ShowWeatherDetails.Response)
}

class DetailedWeatherPresenter: DetailedWeatherPresentationLogic
{
  weak var viewController: DetailedWeatherDisplayLogic?
  
  // MARK: Do something
  
  func presentWeatherInfo(response: DetailedWeather.ShowWeatherDetails.Response)
  {
      let name = response.weatherResponse.name
      let temp = response.weatherResponse.main.temp - 273.15
      let humidity = response.weatherResponse.main.humidity
      let description = response.weatherResponse.weather[0].description
      let viewModel = DetailedWeather.ShowWeatherDetails.ViewModel(name: name, temp: temp, humidity: humidity, desc: description)
    viewController?.displaySomething(viewModel: viewModel)
  }
}
