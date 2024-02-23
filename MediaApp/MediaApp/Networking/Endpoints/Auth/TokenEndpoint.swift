//
//  TokenEndpoint.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 27/1/24.
//

import Foundation

struct TokenEndpoint: Endpoint {
    var basePath: String = "https://api.themoviedb.org"
    var path: String = "/3/authentication/token/new"
    var queryItems: [URLQueryItem] = []
    var method: HttpMethod = .get
    var bodyParameters: Data? = nil
}
