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
    func createAuthenticationURL(with requestToken: String) -> URL?
}

final class DefaultAuthorizationRepository: AuthorizationRepository {
    
    private let networkService: NetworkServiceProtocol
    private let keychainManager: KeychainManager
    
    init(networkService: NetworkServiceProtocol = NetworkService(apiKey: ""),
         keychainManager: KeychainManager = DefaultKeychainManager()) {
        self.networkService = networkService
        self.keychainManager = keychainManager
    }
    
    func fetchRequestToken(completion: @escaping (Result<String, Error>) -> Void) {
        networkService.request(endpoint: TokenEndpoint()) { (result: Result<TokenDecodable, NetworkError>) in
            switch result {
            case .success(let tokenResponse):
                self.saveTokenResponse(response: tokenResponse)
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
                let saveSuccess = self.keychainManager.save(sessionResponse.sessionId,
                                                            for: Keys.sessionIdKey)
                completion(.success(sessionResponse.sessionId))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func createAuthenticationURL(with requestToken: String) -> URL? {
        let authenticationBaseURL = "https://www.themoviedb.org/authenticate"
        return URL(string: "\(authenticationBaseURL)/\(requestToken)?redirect_to=mediaapp://")
    }
}

// MARK: - Keychain methods

extension DefaultAuthorizationRepository {
    func getRequestToken() -> String? {
        return keychainManager.get(for: Keys.requestTokenKey)
    }

    func getSessionId() -> String? {
        return keychainManager.get(for: Keys.sessionIdKey)
    }
    
    private func saveTokenResponse(response: TokenDecodable) {
        let _ = self.keychainManager.save(response.requestToken,
                                                    for: Keys.requestTokenKey)
        let _ = self.keychainManager.save(response.expiresAt,
                                          for: Keys.tokenExpiryDateKey)
    }
    
    func isTokenExpired() -> Bool {
        guard let expiryDateString = keychainManager.get(for: Keys.tokenExpiryDateKey),
              let expiryDate = DateFormatter.tokenExpiry.date(from: expiryDateString) else {
            return true
        }
        return Date() > expiryDate
    }
}
