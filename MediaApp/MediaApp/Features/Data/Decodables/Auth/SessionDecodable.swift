//
//  SessionDecodable.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 27/1/24.
//

import Foundation

struct SessionDecodable: Decodable {
    let success: Bool
    let sessionId: String
    
    enum CodingKeys: String, CodingKey {
        case success
        case sessionId = "session_id"
    }
}
