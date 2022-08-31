//
//  WeatherListConfiguration.swift
//  NatiaL_HW27
//
//  Created by Natia's Mac on 30.08.22.
//

import Foundation

enum WeatherListConfiguration {
    static func configure() -> CityWeathereListViewController {
        let apiManager = APIManager()
        let worker = CityWeathereListWorker(apiManager: apiManager)
        let presenter  = CityWeathereListPresenter()
        let interactor = CityWeathereListInteractor(presenter: presenter, worker: worker)
        let router = CityWeathereListRouter(dataStore: interactor)
        let viewController = CityWeathereListViewController(interactor: interactor, router: router)
        presenter.viewController = viewController
        router.viewController = viewController
        return viewController
    }
}
