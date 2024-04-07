//
//  HomeEntityMock.swift
//  MediaAppTests
//
//  Created by Alex Lin Segarra on 6/3/24.
//

import Foundation
import XCTest
@testable import MediaApp

final class HomeEntityMock: XCTest {

    static func makeEntityMock() -> HomeEntity {
        let decoder = JSONDecoder()
        var sections: [HomeSection] = []
        var genres: [GenreEntity] = []
        
        // Refactorizar la creación de secciones en una función separada
        sections.append(createSection(from: NowPlayingMoviesMock.makeJsonMock(), title: "Now Playing"))
        sections.append(createSection(from: PopularMoviesMock.makeJsonMock(), title: "Popular"))
        sections.append(createSection(from: TopRatedMoviesMock.makeJsonMock(), title: "Top Rated"))
        sections.append(createSection(from: UpcomingMoviesMock.makeJsonMock(), title: "Upcoming"))
        
        let genresData = GenresMock.makeJsonMock()
        do {
            let genresResponse = try decoder.decode(GenresDecodable.self, from: genresData)
            genres = genresResponse.genres.map({ GenreEntity(id: $0.id, name: $0.name) })
        } catch {
            print("Error decoding genres: \(error)")
            genres = []
        }
        
        return HomeEntity(sections: sections, genres: genres)
    }
    
    // Función auxiliar para crear una sección de HomeEntity
    private static func createSection(from jsonData: Data, title: String) -> HomeSection {
        let decoder = JSONDecoder()
        guard let movieResponse = try? decoder.decode(MovieResponseDecodable.self, from: jsonData) else {
            return HomeSection(title: title, movies: [])
        }
        
        let moviesWithImage = movieResponse.results.map { MovieWithImage(movie: MovieEntity(from: $0), image: nil) }
        return HomeSection(title: title, movies: moviesWithImage)
    }
    
}
