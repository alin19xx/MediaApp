//
//  ImageRepository.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 25/2/24.
//

import Foundation
import UIKit

protocol ImageRepository {
    func fetchImageData(withPath path: String, size: String, completion: @escaping (Result<Data, Error>) -> Void)
}

final class DefaultImageRepository: ImageRepository {
    private let networkService: NetworkServiceProtocol
    private let imageBaseURL = "https://image.tmdb.org/t/p/"
    
    init(networkService: NetworkServiceProtocol = NetworkService(apiKey: "")) {
        self.networkService = networkService
    }
    
    func fetchImageData(withPath path: String, size: String, completion: @escaping (Result<Data, Error>) -> Void) {
        let fullPath = "\(imageBaseURL)\(size)\(path)"
        
        networkService.downloadImage(from: fullPath, completion: completion)
    }
}
