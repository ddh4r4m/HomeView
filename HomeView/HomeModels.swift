//
//  HomeModels.swift
//  HomeView
//
//  Created by Dharam Dhurandhar on 12/06/23.
//

import Foundation

struct Item: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
}

struct HomeResponse: Codable {
    let items: [Item]
}
