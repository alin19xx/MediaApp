//
//  TopRatedSeriesMock.swift
//  MediaAppTests
//
//  Created by Alex Lin Segarra on 7/4/24.
//

import Foundation
import XCTest

final class TopRatedSeriesMock: XCTestCase {
    static func makeJsonMock() -> Data {
        return Data("""
        {
            "page": 1,
            "results": [
                {
                    "adult": false,
                    "backdrop_path": "/AvsNXUbP7UKCVnypyx2eWp8z2N3.jpg",
                    "genre_ids": [
                        16,
                        35,
                        10765
                    ],
                    "id": 94954,
                    "origin_country": [
                        "US"
                    ],
                    "original_language": "en",
                    "original_name": "Hazbin Hotel",
                    "overview": "In attempt to find a non-violent alternative for reducing Hell's overpopulation, the daughter of Lucifer opens a rehabilitation hotel that offers a group of misfit demons a chance at redemption.",
                    "popularity": 384.044,
                    "poster_path": "/dTiZBcnMHSMfc4QVIbgULIWPcwL.jpg",
                    "first_air_date": "2024-01-18",
                    "name": "Hazbin Hotel",
                    "vote_average": 9.028,
                    "vote_count": 815
                }
            ],
            "total_pages": 98,
            "total_results": 1944
        }
        """.utf8)
    }
}
