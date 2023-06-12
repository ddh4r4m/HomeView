//
//  HomeInteractor.swift
//  HomeView
//
//  Created by Dharam Dhurandhar on 12/06/23.
//

import Foundation

class HomeInteractor {
    private let api = HomeAPI()

    func fetchHomeData(completion: @escaping (Result<HomeViewModel, Error>) -> Void) {
        api.fetchHomeData { result in
            switch result {
            case .success(let response):
                let viewModels = response.items.map { item in
                    ItemViewModel(id: item.id, name: item.name, description: item.description)
                }
                let viewModel = HomeViewModel(items: viewModels)
                completion(.success(viewModel))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
