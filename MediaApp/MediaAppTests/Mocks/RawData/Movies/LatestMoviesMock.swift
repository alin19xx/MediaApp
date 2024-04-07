//
//  LatestMoviesMock.swift
//  MediaAppTests
//
//  Created by Alex Lin Segarra on 3/3/24.
//

import Foundation
import XCTest

final class LatestMoviesMock: XCTestCase {
    static func makeJsonMock() -> Data {
        return Data("""
        {
            "adult": false,
            "backdrop_path": null,
            "belongs_to_collection": null,
            "budget": 0,
            "genres": [],
            "homepage": "",
            "id": 1253784,
            "imdb_id": null,
            "original_language": "en",
            "original_title": "Music Lessons",
            "overview": "",
            "popularity": 0.0,
            "poster_path": null,
            "production_companies": [],
            "production_countries": [
                {
                    "iso_3166_1": "US",
                    "name": "United States of America"
                }
            ],
            "release_date": "",
            "revenue": 0,
            "runtime": 2,
            "spoken_languages": [
                {
                    "english_name": "No Language",
                    "iso_639_1": "xx",
                    "name": "No Language"
                }
            ],
            "status": "Released",
            "tagline": "",
            "title": "Music Lessons",
            "video": false,
            "vote_average": 0.0,
            "vote_count": 0
        }
        """.utf8)
    }
}
