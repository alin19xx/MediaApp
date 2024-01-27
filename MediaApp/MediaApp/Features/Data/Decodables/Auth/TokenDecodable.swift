//
//  TokenDecodable.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 27/1/24.
//

import Foundation

struct TokenDecodable: Decodable {
    let success: Bool
    let expiresAt: String
    let requestToken: String
}
