//
//  HomeEntity.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 26/2/24.
//

import Foundation
import UIKit

struct HomeEntity {
    var sections: [HomeSection]
    var genres: [GenreEntity]
}

struct GenreEntity {
    var id: Int
    var name: String
}

struct HomeSection {
    let title: String
    let movies: [MovieWithImage]
}

struct MovieWithImage {
    let movie: MovieEntity
    let image: Data?
}

struct MovieEntity {
    let id: Int
    let title: String
    let originalTitle: String
    let overview: String
    let releaseDate: String
    let genreIds: [Int]
    let originalLanguage: String
    let adult: Bool
    let backdropPath: String?
    let posterPath: String?
    let popularity: Double
    let video: Bool
    let voteAverage: Double
    let voteCount: Int

    init(from decodable: MovieDecodable) {
        self.id = decodable.id
        self.title = decodable.title
        self.originalTitle = decodable.originalTitle
        self.overview = decodable.overview
        self.releaseDate = decodable.releaseDate
        self.genreIds = decodable.genreIds
        self.originalLanguage = decodable.originalLanguage
        self.adult = decodable.adult
        self.backdropPath = decodable.backdropPath
        self.posterPath = decodable.posterPath
        self.popularity = decodable.popularity
        self.video = decodable.video
        self.voteAverage = decodable.voteAverage
        self.voteCount = decodable.voteCount
    }
}
