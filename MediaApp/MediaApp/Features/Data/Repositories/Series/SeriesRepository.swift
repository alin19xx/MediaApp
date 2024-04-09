//
//  SeriesRepository.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 7/4/24.
//

import Foundation

struct SeriesParameters {
    let language: String
    let page: String
}

protocol SeriesRepository {
    func fetchSerieList(type: SerieListType, params: SeriesParameters, completion: @escaping (Result<SerieResponseDecodable, Error>) -> Void)
}

final class DefaultSeriesRepository: SeriesRepository {
    
    private let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol = NetworkService()) {
        self.networkService = networkService
    }
    
    func fetchSerieList(type: SerieListType, params: SeriesParameters, completion: @escaping (Result<SerieResponseDecodable, Error>) -> Void){
        
        let endpoint = SeriesEndpoint(type: type, language: params.language, page: Int(params.page) ?? 1)
        
        networkService.request(endpoint: endpoint) { (result: Result<SerieResponseDecodable, NetworkError>) in
            switch result {
            case .success(let response):
                completion(.success(response))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
