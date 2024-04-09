//
//  OnTheAirSeriesMock.swift
//  MediaAppTests
//
//  Created by Alex Lin Segarra on 7/4/24.
//

import Foundation
import XCTest

final class OnTheAirSeriesMock: XCTestCase {
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
                },
                {
                    "adult": false,
                    "backdrop_path": "/dfX2UaHVE5c7kLBFbgmEZJuy4Ev.jpg",
                    "genre_ids": [
                        10767,
                        35
                    ],
                    "id": 61818,
                    "origin_country": [
                        "US"
                    ],
                    "original_language": "en",
                    "original_name": "Late Night with Seth Meyers",
                    "overview": "Seth Meyers, who is 'Saturday Night Live’ longest serving anchor on the show’s wildly popular 'Weekend Update', takes over as host of NBC’s 'Late Night' — home to A-list celebrity guests, memorable comedy and the best in musical talent. As the Emmy Award-winning head writer for 'SNL', Meyers has established a reputation for sharp wit and perfectly timed comedy, and has gained fame for his spot-on jokes and satire. Meyers takes his departure from 'SNL' to his new post at 'Late Night', as Jimmy Fallon moves to 'The Tonight Show'.",
                    "popularity": 6524.825,
                    "poster_path": "/g6MrJxNaHYGYU7Sxo72e5B8gKOV.jpg",
                    "first_air_date": "2014-02-25",
                    "name": "Late Night with Seth Meyers",
                    "vote_average": 5.55,
                    "vote_count": 80
                }
            ],
            "total_pages": 63,
            "total_results": 1248
        }
        """.utf8)
    }
}
