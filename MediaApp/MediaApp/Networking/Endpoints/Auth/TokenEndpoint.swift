//
//  TokenEndpoint.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 27/1/24.
//

import Foundation

struct TokenEndpoint: Endpoint {
    var basePath: String = "https://api.themoviedb.org/3"
    var path: String = "/authentication/token/new"
    var queryItems: [URLQueryItem] = []
}
