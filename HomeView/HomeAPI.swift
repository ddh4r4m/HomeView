//
//  HomeAPI.swift
//  HomeView
//
//  Created by Dharam Dhurandhar on 12/06/23.
//

import Foundation

class HomeAPI {
    func fetchHomeData(completion: @escaping (Result<HomeResponse, Error>) -> Void) {
        guard let url = URL(string: "https://mocki.io/v1/d06f4330-b1f7-4ffc-9db3-5ebfeed2f108") else {
            completion(.failure(NSError(domain: "", code: 0, userInfo: nil)))
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(NSError(domain: "", code: 0, userInfo: nil)))
                return
            }

            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(HomeResponse.self, from: data)
                completion(.success(response))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
