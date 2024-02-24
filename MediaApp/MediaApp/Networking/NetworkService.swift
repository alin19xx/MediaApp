//
//  NetworkService.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 22/1/24.
//

import Foundation

protocol NetworkServiceProtocol {
    func request<T: Decodable>(endpoint: Endpoint, completion: @escaping (Result<T, NetworkError>) -> Void)
}

enum NetworkError: Error {
    case invalidUrl
    case networkError(Error)
    case noData
    case decodingError(Error)
}

class NetworkService: NetworkServiceProtocol {
    private let apiKey: String
    private let session: URLSession
    private let keychainManager: KeychainManager
    
    init(apiKey: String, session: URLSession = .shared, keychainManager: KeychainManager = DefaultKeychainManager()) {
        self.apiKey = apiKey
        self.session = session
        self.keychainManager = keychainManager
    }
    
    func request<T: Decodable>(endpoint: Endpoint, completion: @escaping (Result<T, NetworkError>) -> Void) {
        guard let url = buildURL(for: endpoint) else {
            completion(.failure(.invalidUrl))
            return
        }
        let request = createURLRequest(for: endpoint, with: url)
        executeRequest(request, completion: completion)
    }
    
    // MARK: - Private methods
    
    private func buildURL(for endpoint: Endpoint) -> URL? {
        guard var components = URLComponents(string: endpoint.basePath + endpoint.path) else { return nil }
        addAuthentication(to: &components, with: endpoint.authenticationType)
        return components.url
    }
    
    private func addAuthentication(to components: inout URLComponents, with type: AuthenticationType) {
        switch type {
        case .apiKey:
            components.queryItems = (components.queryItems ?? []) + [URLQueryItem(name: "api_key", value: apiKey)]
        case .sessionID:
            if let sessionID = keychainManager.get(for: Keys.sessionIdKey) {
                components.queryItems?.append(URLQueryItem(name: "session_id", value: sessionID))
            }
        case .requestToken:
            if let requestToken = keychainManager.get(for: Keys.requestTokenKey) {
                components.queryItems?.append(URLQueryItem(name: "request_token", value: requestToken))
            }
        case .none:
            break // No action required
        }
    }
    
    private func createURLRequest(for endpoint: Endpoint, with url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue
        if let bodyParameters = endpoint.bodyParameters, ["POST", "PUT", "PATCH"].contains(endpoint.method.rawValue) {
            request.httpBody = bodyParameters
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        }
        return request
    }
    
    private func executeRequest<T: Decodable>(_ request: URLRequest, completion: @escaping (Result<T, NetworkError>) -> Void) {
        session.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(.noData))
                return
            }
            do {
                let decodedResponse = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedResponse))
            } catch {
                completion(.failure(.decodingError(error)))
            }
        }.resume()
    }
}

extension URLComponents {
    func queryItemsContains(apiKey: String) -> Bool {
        return queryItems?.contains(where: { $0.name == "api_key" && $0.value == apiKey }) ?? false
    }
}
