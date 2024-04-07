//
//  GenresRepositorySuccessMock.swift
//  MediaAppTests
//
//  Created by Alex Lin Segarra on 6/3/24.
//

import Foundation
@testable import MediaApp

extension HomeUseCaseSuccessMock {
    final class GenresRepositorySuccessMock: GenresRepository {
        func fetchGenresList(type: GenreListType, 
                             params: GenresParameters,
                             completion: @escaping (Result<GenresDecodable, Error>) -> Void) {
            let decoder = JSONDecoder()
            var jsonData: Data?
            
            jsonData = GenresMock.makeJsonMock()
            
            guard let data = jsonData else {
                completion(.failure(NSError(domain: "MockError", 
                                            code: 0,
                                            userInfo: [NSLocalizedDescriptionKey: "No mock data available"])))
                return
            }

            do {
                let genresResponse = try decoder.decode(GenresDecodable.self, from: data)
                completion(.success(genresResponse))
            } catch {
                completion(.failure(error))
            }
        }
    }
}
