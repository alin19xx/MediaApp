//
//  MovieResponseDecodable.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 23/1/24.
//

import Foundation

struct MovieResponseDecodable: Decodable {
    let dates: DateRange
    let page: Int
    let results: [MovieDecodable]
    let totalPages: Int
    let totalResults: Int
    
    enum CodingKeys: String, CodingKey {
        case dates, page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

struct DateRange: Decodable {
    let maximum: String
    let minimum: String
}
