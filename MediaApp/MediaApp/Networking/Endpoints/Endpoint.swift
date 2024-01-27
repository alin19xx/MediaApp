//
//  Endpoint.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 25/1/24.
//

import Foundation

protocol Endpoint {
    var basePath: String { get }
    var path: String { get }
    var queryItems: [URLQueryItem] { get }
}

extension Endpoint {
    var url: URL? {
        var components = URLComponents(string: basePath)
        components?.path = path
        components?.queryItems = queryItems
        
        return components?.url
    }
}
