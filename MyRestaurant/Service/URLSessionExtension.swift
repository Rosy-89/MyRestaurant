//
//  URLSessionExtension.swift
//  MyRestaurant
//
//  Created by Alok Kumar Naik on 17/05/2021.
//

import Foundation

protocol Session {
    func getData(with url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
}

extension URLSession: Session {
    func getData(with url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        self.dataTask(with: url) { data, response, error in
            completion(data, response, error)
        }.resume()
    }
        
}
