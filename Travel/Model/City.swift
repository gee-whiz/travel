//
//  City.swift
//  Travel
//
//  Created by George kapoya on 3.5.2020.
//  Copyright © 2020 George kapoya. All rights reserved.
//

import Foundation

struct City {
    let id = UUID()
    let name: String
    let country: String
    let imageUrl: String
}


extension City {

    static func getAllCities() -> [City] {
        return [City(name: "Helsinki", country: "Finland", imageUrl: "hesinki"),
                      City(name: "Paris", country: "France", imageUrl: "paris"),
                      City(name: "San franscisco", country: "USA", imageUrl: "san franscisco"),
                      City(name: "Mumbai", country: "India", imageUrl: "mumbai"),
                      City(name: "Johannesburg", country: "South Africa", imageUrl: "johannesburg"),
                      City(name: "Sydney", country: "Australia", imageUrl: "sydney")]

    }

}
