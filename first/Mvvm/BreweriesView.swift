//
//  BreweriesView.swift
//  first
//
//  Created by bedirhan on 15.08.2023.
//

import SwiftUI


struct BreweriesView: View {
    @ObservedObject var viewModel = BreweriesViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.breweries, id: \.self) {
                BreweryView(brewery: $0)
            }.navigationBarTitle("Breweries")
                .onAppear {
                    self.viewModel.fetchBreweries()
                }
        }
    }
}

struct BreweriesView_Previews: PreviewProvider {
    static var previews: some View {
        BreweriesView()
    }
}
