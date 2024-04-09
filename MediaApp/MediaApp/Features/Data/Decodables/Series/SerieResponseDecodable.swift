//
//  SerieResponseDecodable.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 7/4/24.
//

import Foundation

struct SerieResponseDecodable: Decodable {
    let page: Int
    let results: [SerieDecodable]
    let totalPages: Int
    let totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page
        case results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
