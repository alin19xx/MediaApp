//
//  GenresRepository.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 25/2/24.
//

import Foundation

struct GenresParameters {
    let language: String
}

protocol GenresRepository {
    func fetchGenresList(type: GenreListType, params: GenresParameters, completion: @escaping (Result<GenresDecodable, Error>) -> Void)
}

final class DefaultGenresRepository: GenresRepository {
    
    private let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol = NetworkService(apiKey: "")) {
        self.networkService = networkService
    }
    
    func fetchGenresList(type: GenreListType, params: GenresParameters, completion: @escaping (Result<GenresDecodable, Error>) -> Void) {
        
        let endpoint = GenresEndpoint(type: type, language: "es-ES")
        networkService.request(endpoint: endpoint) { (result: Result<GenresDecodable, NetworkError>) in
            switch result {
            case .success(let response):
                print("Genres: \(response)")
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
    
}
