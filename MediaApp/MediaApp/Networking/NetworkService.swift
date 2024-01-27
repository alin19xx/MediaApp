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

class NetworkService: NetworkServiceProtocol {
    private let apiKey: String
    private let session: URLSession
    
    init(apiKey: String, session: URLSession = .shared) {
        self.apiKey = apiKey
        self.session = session
    }
    
    func request<T: Decodable>(endpoint: Endpoint, completion: @escaping (Result<T, NetworkError>) -> Void) {
        guard let url = endpoint.url else {
            completion(.failure(.invalidUrl))
            return
        }
        
        var urlRequest = URLRequest(url: url)
        // Asegura que los query items incluyan la API key
        if var components = URLComponents(url: url, resolvingAgainstBaseURL: true) {
            var queryItems = components.queryItems ?? []
            queryItems.append(URLQueryItem(name: "api_key", value: apiKey))
            components.queryItems = queryItems
            
            // Actualiza el URL del request en caso de que el URLComponents haya cambiado
            urlRequest.url = components.url
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

enum NetworkError: Error {
    case invalidUrl
    case networkError(Error)
    case noData
    case decodingError(Error)
}



//let networkService = NetworkService(baseUrl: "", apiKey: <#T##String#>)

//networkService.request(endpoint: Endpoint(path: "/movie/popular", method: .get, queryItems: nil)) { (result: Result<MovieResponse, NetworkError>) in
//    switch result {
//    case .success(let movieResponse):
//        print(movieResponse) // Haz algo con la respuesta
//    case .failure(let error):
//        print(error) // Maneja el error
//    }
//}
