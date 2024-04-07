//
//  NetworkService.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 22/1/24.
//

import Foundation

protocol NetworkServiceProtocol {
    func request<T: Decodable>(endpoint: Endpoint, completion: @escaping (Result<T, NetworkError>) -> Void)
    func downloadImage(from urlString: String, completion: @escaping (Result<Data, Error>) -> Void)
}

enum NetworkError: Error {
    case invalidUrl
    case networkError(Error)
    case noData
    case decodingError(Error)
}

class NetworkService: NetworkServiceProtocol {
    private let session: URLSession
    private let keychainManager: KeychainManager
    private let logger: MediaLogger
    
    init(session: URLSession = .shared,
         keychainManager: KeychainManager = DefaultKeychainManager(),
         logger: MediaLogger = NetworkingLogger()) {
        self.session = session
        self.keychainManager = keychainManager
        self.logger = logger
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
            components.queryItems = (components.queryItems ?? []) + [URLQueryItem(name: "api_key", value: getTMDBAPIKey())]
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
        let requestInfo = logRequestWith(request)
        
        session.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                self.logger.log(message: "Network error: No data for request: \(requestInfo)", level: .error)
                completion(.failure(.noData))
                return
            }
            do {
                let decodedResponse = try JSONDecoder().decode(T.self, from: data)
                self.logger.log(message: "Successful response from: \(requestInfo)", level: .info)
                completion(.success(decodedResponse))
            } catch {
                self.logger.log(message: "Decoding error for: \(requestInfo) with error: \(error)", level: .error)
                completion(.failure(.decodingError(error)))
            }
        }.resume()
    }
    
    private func logRequestWith(_ request: URLRequest) -> String {
        guard let url = request.url else {
            logger.log(message: "No URL on request", level: .error)
            return ""
        }
        
        let safeUrlString = url.absoluteString.replacingOccurrences(of: "api_key=\(getTMDBAPIKey())", with: "api_key=SECRET")

        let requestInfo = "\(request.httpMethod ?? "GET") \(safeUrlString)"
        logger.log(message: "Starting request: \(requestInfo)", level: .info)
        
        return requestInfo
    }
}

extension NetworkService {
    private func getTMDBAPIKey() -> String {
        if let path = Bundle.main.path(forResource: "Config", ofType: "plist"),
           let config = NSDictionary(contentsOfFile: path),
           let apiKey = config["TheMovieDBAPIKey"] as? String {
            return apiKey
        }
        
        logger.log(message: "Could not get API key from Config.plist", level: .error)
        
        return ""
    }
}

extension NetworkService {
    func downloadImage(from urlString: String, completion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(.failure(NetworkError.invalidUrl))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(NetworkError.networkError(error)))
                return
            }
            
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                return
            }
            
            completion(.success(data))
        }
        
        task.resume()
    }
}

extension URLComponents {
    func queryItemsContains(apiKey: String) -> Bool {
        return queryItems?.contains(where: { $0.name == "api_key" && $0.value == apiKey }) ?? false
    }
}
