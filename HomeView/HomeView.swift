//
//  HomeView.swift
//  HomeView
//
//  Created by Dharam Dhurandhar on 12/06/23.
//

import SwiftUI

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct HomeView: View {
    @ObservedObject private var presenter = HomePresenter()

    var body: some View {
        VStack {
            if let homeData = presenter.homeData {
                List(homeData.items) { item in
                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                        Text(item.description)
                            .font(.subheadline)
                    }
                }
            } else {
                Text("Loading...")
            }
        }
        .onAppear {
            presenter.fetchHomeData()
        }
    }
}
