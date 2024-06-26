//
//  MoviesRepository.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 26/1/24.
//

import Foundation

struct MoviesParameters {
    let language: String
    let page: String
}

protocol MovieRepository {
    func fetchMoviesList(type: MovieListType, params: MoviesParameters, completion: @escaping (Result<MovieResponseDecodable, Error>) -> Void)
}

final class DefaultMovieRepository: MovieRepository {
    
    private let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol = NetworkService()) {
        self.networkService = networkService
    }
    
    func fetchMoviesList(type: MovieListType, params: MoviesParameters, completion: @escaping (Result<MovieResponseDecodable, Error>) -> Void) {
        
        let endpoint = MoviesEndpoint(type: type, language: params.language, page: Int(params.page) ?? 1)
        
        networkService.request(endpoint: endpoint) { (result: Result<MovieResponseDecodable, NetworkError>) in
            switch result {
            case .success(let response):
                completion(.success(response))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
