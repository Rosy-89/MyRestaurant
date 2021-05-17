//
//  NetworkURLs.swift
//  MyRestaurant
//
//  Created by Alok Kumar Naik on 17/05/2021.
//

import Foundation

enum NetworkURLs: String {
    case webPage = "https://www.bottlerocketstudios.com"
    case lunchData = "https://s3.amazonaws.com/br-codingexams/restaurants.json"
    
    var url: URL? {
        return URL(string: self.rawValue)
    }
}
