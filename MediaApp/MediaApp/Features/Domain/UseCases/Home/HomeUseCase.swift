//
//  HomeUseCase.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 26/2/24.
//

import Foundation

protocol HomeUseCase {
    func execute(completion: @escaping (Result<HomeEntity, Error>) -> Void)
}

class DefaultHomeUseCase: HomeUseCase {
    private let movieRepository: MovieRepository
    private let imageRepository: ImageRepository
    private let genresRepository: GenresRepository
    
    init(movieRepository: MovieRepository, 
         imageRepository: ImageRepository,
         genresRepository: GenresRepository) {
        self.movieRepository = movieRepository
        self.imageRepository = imageRepository
        self.genresRepository = genresRepository
    }
    
    func execute(completion: @escaping (Result<HomeEntity, Error>) -> Void) {
        let movieListTypes: [MovieListType] = [.popular, .nowPlaying, .upcoming]
        var homeEntity = HomeEntity(sections: [], genres: [])
        let group = DispatchGroup()

        for listType in movieListTypes {
            group.enter()
            fetchMovieList(for: listType, completion: { result in
                defer { group.leave() }
                
                switch result {
                case .success(let moviesWithImages):
                    let section = HomeSection(title: listType.rawValue, movies: moviesWithImages)
                    homeEntity.sections.append(section)
                case .failure(let error):
                    print("Error processing movie list for \(listType): \(error)")
                }
            })
        }
        
        group.enter()
        fetchGenres { result in
            defer {  group.leave() }
            
            switch result {
            case .success(let genres):
                homeEntity.genres = genres
            case .failure(let failure):
                break
            }
        }

        group.notify(queue: .global(qos: .userInitiated)) {
            completion(.success(homeEntity))
        }
    }
}

extension DefaultHomeUseCase {
    
    private func fetchMovieList(for listType: MovieListType, completion: @escaping (Result<[MovieWithImage], Error>) -> Void) {
        movieRepository.fetchMoviesList(type: listType, params: MoviesParameters(language: "en-US", page: "1")) { [weak self] result in
            switch result {
            case .success(let movieResponse):
                self?.processMovies(movieResponse.results, completion: completion)
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    private func processMovies(_ movies: [MovieDecodable], completion: @escaping (Result<[MovieWithImage], Error>) -> Void) {
        var moviesWithImages: [MovieWithImage] = []
        let group = DispatchGroup()

        for movie in movies {
            group.enter()
            downloadImage(for: movie) { result in
                defer { group.leave() }
                // Independientemente del resultado, crea un MovieWithImage.
                // Si falla la descarga, imageData será nil
                let imageData = try? result.get() // Intenta obtener la imagen, o nil si hay error
                let movieEntity = MovieEntity(from: movie)
                let movieWithImage = MovieWithImage(movie: movieEntity, image: imageData)
                moviesWithImages.append(movieWithImage)
            }
        }

        group.notify(queue: .global(qos: .userInitiated)) {
            completion(.success(moviesWithImages))
        }
    }
    
    private func downloadImage(for movie: MovieDecodable, completion: @escaping (Result<Data?, Error>) -> Void) {
        imageRepository.fetchImageData(withPath: movie.posterPath, size: "w500") { result in
            switch result {
            case .success(let data):
                completion(.success(data))
            case .failure:
                completion(.success(nil))
            }
        }
    }
}

extension DefaultHomeUseCase {
    func fetchGenres(completion: @escaping (Result<[GenreEntity], Error>) -> Void) {
        genresRepository.fetchGenresList(type: .movies, params: GenresParameters(language: "es-ES")) { result in
            switch result {
            case .success(let genresResponse):
                let genres = genresResponse.genres.map { GenreEntity(id: $0.id, name: $0.name) }
                completion(.success(genres))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
