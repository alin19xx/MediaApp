//
//  MoviesEndpoint.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 26/1/24.
//

import Foundation

enum MovieListType {
    case nowPlaying, popular, topRated, upcoming
}

struct MoviesEndpoint: Endpoint {
    var method: HttpMethod = .get
    
    var bodyParameters: Data?
    
    var basePath = "https://api.themoviedb.org/3"
    var path: String = ""
    var queryItems: [URLQueryItem]
    
    init(type: MovieListType, language: String, page: Int) {
        self.queryItems = [URLQueryItem(name: "language", value: language),
                           URLQueryItem(name: "page", value: String(page))]
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
        }
    }
}
