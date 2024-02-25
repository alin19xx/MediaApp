//
//  TokenEndpoint.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 27/1/24.
//

import Foundation

struct TokenEndpoint: Endpoint {
    var path: String = "/authentication/token/new"
    var method: HttpMethod = .get
    var queryItems: [URLQueryItem] = []
    var bodyParameters: Data? = nil
    var authenticationType: AuthenticationType = .apiKey
}
