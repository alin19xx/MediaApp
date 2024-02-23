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
    var queryItems: [URLQueryItem] = []
    var method: HttpMethod = .post
    var bodyParameters: Data?

    init(requestToken: String) {
        let parameters = ["request_token": requestToken]
        self.bodyParameters = try? JSONSerialization.data(withJSONObject: parameters, options: [])
    }
}

