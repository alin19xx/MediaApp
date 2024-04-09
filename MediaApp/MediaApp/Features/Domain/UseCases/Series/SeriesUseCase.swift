//
//  SeriesUseCase.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 7/4/24.
//

import Foundation

protocol SeriesUseCase {
    func execute(completion: @escaping (Result<SeriesEntity, Error>) -> Void)
}

class DefaultSeriesUseCase: SeriesUseCase {
    private let seriesRepository: SeriesRepository
    private let imageRepository: ImageRepository
    
    init(seriesRepository: SeriesRepository,
         imageRepository: ImageRepository) {
        self.seriesRepository = seriesRepository
        self.imageRepository = imageRepository
    }
    
    func execute(completion: @escaping (Result<SeriesEntity, Error>) -> Void) {
        let serieListTypes: [SerieListType] = [.onTheAir, .topRated, .popular]
        var seriesEntity = SeriesEntity(sections: [])
        let group = DispatchGroup()

        for listType in serieListTypes {
            group.enter()
            fetchSerieList(for: listType, completion: { result in
                defer { group.leave() }
                
                switch result {
                case .success(let serieWithImages):
                    let section = SerieSection(title: listType.rawValue, series: serieWithImages)
                    seriesEntity.sections.append(section)
                case .failure(let error):
                    print("Error processing movie list for \(listType): \(error)")
                }
            })
        }

        group.notify(queue: .global(qos: .userInitiated)) {
            completion(.success(seriesEntity))
        }
    }
}

extension DefaultSeriesUseCase {
    
    private func fetchSerieList(for listType: SerieListType, completion: @escaping (Result<[SerieWithImage], Error>) -> Void) {
        seriesRepository.fetchSerieList(type: listType, params: SeriesParameters(language: "en-US", page: "1")) { [weak self] result in
            switch result {
            case .success(let seriesResponse):
                self?.processSeries(seriesResponse.results, completion: completion)
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    private func processSeries(_ series: [SerieDecodable], completion: @escaping (Result<[SerieWithImage], Error>) -> Void) {
        var moviesWithImages: [SerieWithImage] = []
        let group = DispatchGroup()

        for serie in series {
            group.enter()
            downloadImage(for: serie) { result in
                defer { group.leave() }
                // Independientemente del resultado, crea un MovieWithImage.
                // Si falla la descarga, imageData será nil
                let imageData = try? result.get() // Intenta obtener la imagen, o nil si hay error
                let serieEntity = SerieEntity(from: serie)
                let movieWithImage = SerieWithImage(serie: serieEntity, image: imageData)
                moviesWithImages.append(movieWithImage)
            }
        }

        group.notify(queue: .global(qos: .userInitiated)) {
            completion(.success(moviesWithImages))
        }
    }
    
    private func downloadImage(for serie: SerieDecodable, completion: @escaping (Result<Data?, Error>) -> Void) {
        guard let posterPath = serie.posterPath else {
            completion(.success(nil))
            return
        }
        
        imageRepository.fetchImageData(withPath: posterPath, size: "w500") { result in
            switch result {
            case .success(let data):
                completion(.success(data))
            case .failure:
                completion(.success(nil))
            }
        }
    }
}
