//
//  DetailedWeatherConfiguration.swift
//  NatiaL_HW27
//
//  Created by Natia's Mac on 31.08.22.
//

import Foundation

enum  DetailedWeatherConfiguration {
    static func configure(with selectedCity: WeatherResponse) -> DetailedWeatherViewController {
        let presenter = DetailedWeatherPresenter()
        let interactor = DetailedWeatherInteractor(presenter: presenter, passedObject: selectedCity)
        let router = DetailedWeatherRouter(dataStore: interactor)
        let viewController = DetailedWeatherViewController(interactor: interactor, router: router)
        presenter.viewController = viewController
        router.viewController = viewController
        
        return viewController 
    }
}
