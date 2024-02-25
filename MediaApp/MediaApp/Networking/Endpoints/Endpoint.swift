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
    
    var authenticationType: AuthenticationType { get }
}

extension Endpoint {
    var basePath: String { "https://api.themoviedb.org/3" }
    
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

enum AuthenticationType {
    case none
    case apiKey
    case requestToken
    case sessionID
}
