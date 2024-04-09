//
//  SeriesEndpoint.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 7/4/24.
//

import Foundation

enum SerieListType: String {
    case onTheAir = "On The Air"
    case popular = "Popular"
    case topRated = "Top Rated"
}

struct SeriesEndpoint: Endpoint {
    var path: String = ""
    var method: HttpMethod = .get
    var queryItems: [URLQueryItem]
    var bodyParameters: Data? = nil
    var authenticationType: AuthenticationType = .apiKey

    init(type: SerieListType, language: String, page: Int) {
        self.queryItems = [
            URLQueryItem(name: "language", value: language),
            URLQueryItem(name: "page", value: String(page))
        ]
        self.path = getPath(for: type)
    }
    
    private func getPath(for type: SerieListType) -> String {
        switch type {
        case .onTheAir:
            return "/tv/on_the_air"
        case .popular:
            return "/tv/popular"
        case .topRated:
            return "/tv/top_rated"
        }
    }
}
