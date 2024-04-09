//
//  PopularSeriesMock.swift
//  MediaAppTests
//
//  Created by Alex Lin Segarra on 7/4/24.
//

import Foundation
import XCTest

final class PopularSeriesMock: XCTestCase {
    static func makeJsonMock() -> Data {
        return Data("""
        {
            "page": 1,
            "results": [
                {
                    "adult": false,
                    "backdrop_path": "/butPVWgcbtAjL9Z7jU7Xj1KA8KD.jpg",
                    "genre_ids": [
                        10767,
                        35
                    ],
                    "id": 22980,
                    "origin_country": [
                        "US"
                    ],
                    "original_language": "en",
                    "original_name": "Watch What Happens Live with Andy Cohen",
                    "overview": "Bravo network executive Andy Cohen discusses pop culture topics with celebrities and reality show personalities.",
                    "popularity": 6787.095,
                    "poster_path": "/onSD9UXfJwrMXWhq7UY7hGF2S1h.jpg",
                    "first_air_date": "2009-07-16",
                    "name": "Watch What Happens Live with Andy Cohen",
                    "vote_average": 5.078,
                    "vote_count": 45
                }
            ],
            "total_pages": 8471,
            "total_results": 169404
        }
        """.utf8)
    }
}
