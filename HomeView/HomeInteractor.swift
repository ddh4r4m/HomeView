//
//  HomeInteractor.swift
//  HomeView
//
//  Created by Dharam Dhurandhar on 12/06/23.
//

import Foundation

class HomeInteractor {
    private let api = HomeAPI()

    func fetchHomeData(completion: @escaping (Result<HomeResponse, Error>) -> Void) {
        api.fetchHomeData { result in
            switch result {
            case .success(let response):
                completion(.success(response))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
