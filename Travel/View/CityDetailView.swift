//
//  CityDetailView.swift
//  Travel
//
//  Created by George kapoya on 3.5.2020.
//  Copyright © 2020 George kapoya. All rights reserved.
//

import SwiftUI

struct CityDetailView: View {

    var city: City

    var body: some View {
        VStack {
            Image(city.imageUrl)
                .resizable()
                .scaledToFit()
        }.frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 0, maxHeight: .infinity, alignment: .topLeading).navigationBarTitle(city.name)
    }
}

struct CityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CityDetailView(city: City(name: "Paris", country: "France", imageUrl: "paris"))
    }
}
