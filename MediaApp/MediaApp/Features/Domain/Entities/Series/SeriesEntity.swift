//
//  SeriesEntity.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 7/4/24.
//

import Foundation

struct SeriesEntity {
    var sections: [SerieSection]
}

struct SerieSection {
    let title: String
    let series: [SerieWithImage]
}

struct SerieWithImage {
    let serie: SerieEntity
    let image: Data?
}

struct SerieEntity {
    let adult: Bool
    let backdropPath: String?
    let genreIds: [Int]
    let id: Int
    let originCountry: [String]
    let originalLanguage: String
    let originalName: String
    let overview: String
    let popularity: Double
    let posterPath: String?
    let firstAirDate: String
    let name: String
    let voteAverage: Double
    let voteCount: Int

    init(from decodable: SerieDecodable) {
        self.adult = decodable.adult
        self.backdropPath = decodable.backdropPath
        self.genreIds = decodable.genreIds
        self.id = decodable.id
        self.originCountry = decodable.originCountry
        self.originalLanguage = decodable.originalLanguage
        self.originalName = decodable.originalName
        self.overview = decodable.overview
        self.popularity = decodable.popularity
        self.posterPath = decodable.posterPath
        self.firstAirDate = decodable.firstAirDate
        self.name = decodable.name
        self.voteAverage = decodable.voteAverage
        self.voteCount = decodable.voteCount
    }
}
