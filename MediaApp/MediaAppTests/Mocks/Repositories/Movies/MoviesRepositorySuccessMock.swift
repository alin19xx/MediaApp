//
//  MoviesRepositorySuccessMock.swift
//  MediaAppTests
//
//  Created by Alex Lin Segarra on 6/3/24.
//

import Foundation
@testable import MediaApp

extension HomeUseCaseSuccessMock {
    final class MoviesRepositorySuccessMock: MovieRepository {
        func fetchMoviesList(type: MovieListType, params: MoviesParameters, completion: @escaping (Result<MovieResponseDecodable, Error>) -> Void) {
            let decoder = JSONDecoder()
            var jsonData: Data?

            switch type {
            case .nowPlaying:
                jsonData = NowPlayingMoviesMock.makeJsonMock()
            case .popular:
                jsonData = PopularMoviesMock.makeJsonMock()
            case .topRated:
                jsonData = TopRatedMoviesMock.makeJsonMock()
            case .upcoming:
                jsonData = UpcomingMoviesMock.makeJsonMock()
//            case .latest:
//                jsonData = LatestMoviesMock.makeJsonMock()
            }

            guard let data = jsonData else {
                completion(.failure(NSError(domain: "MockError", code: 0, userInfo: [NSLocalizedDescriptionKey: "No mock data available"])))
                return
            }

            do {
                let moviesResponse = try decoder.decode(MovieResponseDecodable.self, from: data)
                completion(.success(moviesResponse))
            } catch {
                completion(.failure(error))
            }
        }
    }
}
