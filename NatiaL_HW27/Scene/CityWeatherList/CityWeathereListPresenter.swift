//
//  CityWeathereListPresenter.swift
//  NatiaL_HW27
//
//  Created by Natia's Mac on 30.08.22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol CityWeathereListPresentationLogic
{
  func presentWeather(response: CityWeathereList.ShowWeatherList.Response)
    func presentSelectedDetails(response: CityWeathereList.ShowWeatherList.Response)
}

class CityWeathereListPresenter: CityWeathereListPresentationLogic
{
    
  weak var viewController: CityWeathereListDisplayLogic?
  
  // MARK: private func
    private func configureTextLabel(from data: WeatherResponse) -> WeatherResponse {
       data
    }
    
    
    func presentWeather(response: CityWeathereList.ShowWeatherList.Response) {
        let viewModel = configureTextLabel(from: response.weatherResponse)
        viewController?.displayCityWeatherList(viewModel: CityWeathereList.ShowWeatherList.ViewModel(tempInCity: viewModel))
    }
    
    func presentSelectedDetails(response: CityWeathereList.ShowWeatherList.Response) {
        let viewModel = configureTextLabel(from: response.weatherResponse)
        viewController?.displayCityWeatherList(viewModel: CityWeathereList.ShowWeatherList.ViewModel(tempInCity: viewModel))
    }
}
