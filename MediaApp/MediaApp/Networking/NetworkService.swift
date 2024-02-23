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
    
    init(apiKey: String, session: URLSession = .shared) {
        self.apiKey = apiKey
        self.session = session
    }
    
    func request<T: Decodable>(endpoint: Endpoint, completion: @escaping (Result<T, NetworkError>) -> Void) {
        guard var components = URLComponents(string: endpoint.basePath + endpoint.path) else {
            completion(.failure(.invalidUrl))
            return
        }
        
        if !endpoint.queryItems.contains(where: { $0.name == "api_key" }) {
            components.queryItems = (components.queryItems ?? []) + [URLQueryItem(name: "api_key", value: apiKey)]
        } else {
            components.queryItems = endpoint.queryItems
        }

        guard let url = components.url else {
            completion(.failure(.invalidUrl))
            return
        }

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = endpoint.method.rawValue
        
        if let bodyParameters = endpoint.bodyParameters, ["POST", "PUT", "PATCH"].contains(endpoint.method.rawValue) {
            urlRequest.httpBody = bodyParameters
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        }

        let task = session.dataTask(with: urlRequest) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(.networkError(error!)))
                return
            }

            do {
                let decodedResponse = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedResponse))
            } catch {
                completion(.failure(.decodingError(error)))
            }
        }

        task.resume()
    }
}

extension URLComponents {
    func queryItemsContains(apiKey: String) -> Bool {
        return queryItems?.contains(where: { $0.name == "api_key" && $0.value == apiKey }) ?? false
    }
}
