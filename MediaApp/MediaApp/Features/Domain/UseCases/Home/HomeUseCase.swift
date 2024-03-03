//
//  HomeUseCase.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 26/2/24.
//

import Foundation
import UIKit

protocol HomeUseCase {
    func execute(completion: @escaping (Result<HomeEntity, Error>) -> Void)
}

class DefaultHomeUseCase: HomeUseCase {
    private let movieRepository: MovieRepository
    private let imageRepository: ImageRepository
    
    init(movieRepository: MovieRepository, imageRepository: ImageRepository) {
        self.movieRepository = movieRepository
        self.imageRepository = imageRepository
    }
    
    func execute(completion: @escaping (Result<HomeEntity, Error>) -> Void) {
        let movieListTypes: [MovieListType] = [.popular, .nowPlaying, .upcoming]
        var homeEntity = HomeEntity(sections: [])
        let group = DispatchGroup()
        
        for listType in movieListTypes {
            group.enter()
            let params = MoviesParameters(language: "en-US", page: "1")
            movieRepository.fetchMoviesList(type: listType, params: params) { result in
                defer { group.leave() }
                
                switch result {
                case .success(let movieResponse):
                    let movies = movieResponse.results.map { MovieEntity(from: $0) }
                    let section = HomeSection(title: "listType", movies: movies.map { MovieWithImage(movie: $0, image: nil) })
                    homeEntity.sections.append(section)
                case .failure(let error):
                    print("Error loading movie list for \(listType): \(error)")
                }
            }
        }
        
        group.notify(queue: .main) {
            completion(.success(homeEntity))
        }
    }
}
