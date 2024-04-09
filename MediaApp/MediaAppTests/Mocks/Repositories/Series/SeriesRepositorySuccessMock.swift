//
//  SeriesRepositorySuccessMock.swift
//  MediaAppTests
//
//  Created by Alex Lin Segarra on 7/4/24.
//

import Foundation
@testable import MediaApp

extension SeriesUseCaseSuccessMock {
    final class SeriesRepositorySuccessMock: SeriesRepository {
        func fetchSerieList(type: SerieListType, params: SeriesParameters, completion: @escaping (Result<SerieResponseDecodable, Error>) -> Void) {
            let decoder = JSONDecoder()
            var jsonData: Data?

            switch type {
            case .onTheAir:
                jsonData = OnTheAirSeriesMock.makeJsonMock()
            case .topRated:
                jsonData = TopRatedSeriesMock.makeJsonMock()
            case .popular:
                jsonData = PopularSeriesMock.makeJsonMock()
            }

            guard let data = jsonData else {
                completion(.failure(NSError(domain: "MockError", code: 0, userInfo: [NSLocalizedDescriptionKey: "No mock data available"])))
                return
            }

            do {
                let seriesResponse = try decoder.decode(SerieResponseDecodable.self, from: data)
                completion(.success(seriesResponse))
            } catch {
                completion(.failure(error))
            }
        }
    }
}
