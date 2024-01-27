//
//  SessionEndpoint.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 27/1/24.
//

import Foundation

struct SessionEndpoint: Endpoint {
    var basePath: String = "https://api.themoviedb.org/3"
    var path: String = "/authentication/session/new"
    var queryItems: [URLQueryItem]

    init(requestToken: String) {
        self.queryItems = [URLQueryItem(name: "request_token", value: requestToken)]
    }
}
