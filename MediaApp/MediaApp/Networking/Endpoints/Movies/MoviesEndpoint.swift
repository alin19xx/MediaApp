//
//  MoviesEndpoint.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 26/1/24.
//

import Foundation

enum MovieListType: String {
    case nowPlaying = "Now Playing"
    case popular = "Popular"
    case topRated = "Top Rated"
    case upcoming = "Upcoming"
}

struct MoviesEndpoint: Endpoint {
    var path: String = ""
    var method: HttpMethod = .get
    var queryItems: [URLQueryItem]
    var bodyParameters: Data? = nil
    var authenticationType: AuthenticationType = .apiKey

    init(type: MovieListType, language: String, page: Int) {
        self.queryItems = [
            URLQueryItem(name: "language", value: language),
            URLQueryItem(name: "page", value: String(page))
        ]
        self.path = getPath(for: type)
    }
    
    private func getPath(for type: MovieListType) -> String {
        switch type {
        case .nowPlaying:
            return "/movie/now_playing"
        case .popular:
            return "/movie/popular"
        case .topRated:
            return "/movie/top_rated"
        case .upcoming:
            return "/movie/upcoming"
//        case .latest:
//            return "/movie/latest"
        }
    }
}
