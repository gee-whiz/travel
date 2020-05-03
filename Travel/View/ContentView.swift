//
//  ContentView.swift
//  Travel
//
//  Created by George kapoya on 3.5.2020.
//  Copyright © 2020 George kapoya. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    let cities = City.getAllCities()

    var body: some View {


        NavigationView {
            List(self.cities, id: \.id) { city in
                CityCell(city: city)
                Spacer()
                NavigationLink("", destination: CityDetailView(city: city))
            }
        .navigationBarTitle("Discover")
        }

    }
}



struct CityCell: View {

    let city: City
    var body: some View {
        HStack {
            Image(city.imageUrl)
                .resizable()
                .frame(width: 100, height: 100).cornerRadius(5)
            VStack(alignment: .leading, spacing: 8) {
                Text(city.name).font(.headline)
                Text(city.country).font(.subheadline)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.dark)
    }
}
