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
    var method: HttpMethod { get }
    var bodyParameters: Data? { get }
}

extension Endpoint {
    var url: URL? {
        var components = URLComponents(string: basePath)
        components?.path = path
        components?.queryItems = queryItems.isEmpty ? nil : queryItems
        
        return components?.url
    }
}

enum HttpMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
}
