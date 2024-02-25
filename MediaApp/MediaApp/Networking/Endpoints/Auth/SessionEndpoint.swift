//
//  SessionEndpoint.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 27/1/24.
//

import Foundation

struct SessionEndpoint: Endpoint {
    var path: String = "/authentication/session/new"
    var method: HttpMethod = .post
    var queryItems: [URLQueryItem] = []
    var bodyParameters: Data?
    var authenticationType: AuthenticationType = .apiKey

    init(requestToken: String) {
        let parameters = ["request_token": requestToken]
        self.bodyParameters = try? JSONSerialization.data(withJSONObject: parameters, options: [])
    }
}
