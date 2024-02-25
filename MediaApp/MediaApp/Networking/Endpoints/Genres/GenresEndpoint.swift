//
//  GenresEndpoint.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 25/2/24.
//

import Foundation

enum GenreListType {
    case movies, tv
}

struct GenresEndpoint: Endpoint {
    var path: String = ""
    var method: HttpMethod = .get
    var queryItems: [URLQueryItem]
    var bodyParameters: Data? = nil
    var authenticationType: AuthenticationType = .apiKey

    init(type: GenreListType, language: String) {
        self.queryItems = [
            URLQueryItem(name: "language", value: language)
        ]
        self.path = getPath(for: type)
    }
    
    private func getPath(for type: GenreListType) -> String {
        switch type {
        case .movies:
            return "/genre/movie/list"
        case .tv:
            return "/genre/tv/list"
        }
    }
}
