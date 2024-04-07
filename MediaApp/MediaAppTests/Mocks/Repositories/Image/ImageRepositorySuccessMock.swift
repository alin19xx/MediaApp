//
//  ImageRepositorySuccessMock.swift
//  MediaAppTests
//
//  Created by Alex Lin Segarra on 11/3/24.
//

import Foundation
@testable import MediaApp

extension HomeUseCaseSuccessMock {
    final class ImageRepositorySuccessMock: ImageRepository {
        
        func fetchImageData(withPath path: String, 
                            size: String,
                            completion: @escaping (Result<Data, Error>) -> Void) {
            let imageData = Data()
            completion(.success(imageData))
        }
    }
}
