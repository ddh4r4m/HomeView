//
//  HomePresenter.swift
//  HomeView
//
//  Created by Dharam Dhurandhar on 12/06/23.
//

import Foundation

import Foundation

class HomePresenter: ObservableObject {
    private let interactor = HomeInteractor()
    @Published var homeData: HomeViewModel?

    func fetchHomeData() {
        interactor.fetchHomeData { result in
            switch result {
            case .success(let viewModel):
                DispatchQueue.main.async {
                    self.homeData = viewModel
                }
            case .failure(let error):
                // Handle error
                break
            }
        }
    }
}
