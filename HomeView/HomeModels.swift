//
//  HomeModels.swift
//  HomeView
//
//  Created by Dharam Dhurandhar on 12/06/23.
//

import Foundation

struct Item: Codable {
    let id: Int
    let name: String
    let description: String
}

struct HomeResponse: Codable {
    let items: [Item]
}

struct HomeViewModel {
    let items: [ItemViewModel]
}

struct ItemViewModel: Identifiable {
    let id: Int
    let name: String
    let description: String
}
