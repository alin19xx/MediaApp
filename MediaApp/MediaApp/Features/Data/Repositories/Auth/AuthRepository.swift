//
//  AuthRepository.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 26/1/24.
//

import Foundation

protocol AuthorizationRepository {
    func fetchRequestToken(completion: @escaping (Result<String, Error>) -> Void)
    func createSession(requestToken: String, completion: @escaping (Result<String, Error>) -> Void)
}

final class TMDbAuthorizationRepository: AuthorizationRepository {
    
    private let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol = NetworkService(apiKey: "")) {
        self.networkService = networkService
    }
    
    func fetchRequestToken(completion: @escaping (Result<String, Error>) -> Void) {
        networkService.request(endpoint: TokenEndpoint()) { (result: Result<TokenDecodable, NetworkError>) in
            switch result {
            case .success(let tokenResponse):
                completion(.success(tokenResponse.requestToken))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func createSession(requestToken: String, completion: @escaping (Result<String, Error>) -> Void) {
        let endpoint = SessionEndpoint(requestToken: requestToken)
        networkService.request(endpoint: endpoint) { (result: Result<SessionDecodable, NetworkError>) in
            switch result {
            case .success(let sessionResponse):
                completion(.success(sessionResponse.sessionId))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
