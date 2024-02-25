//
//  GenresDecodable.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 25/2/24.
//

import Foundation

struct GenresDecodable: Decodable {
    let genres: [GenreDecodable]
    
    enum CodingKeys: String, CodingKey {
        case genres
    }
}

struct GenreDecodable: Decodable {
    let id: Int
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
    }
}
