//
//  HomeUseCaseSuccessMock.swift
//  MediaAppTests
//
//  Created by Alex Lin Segarra on 6/3/24.
//

import Foundation
import XCTest
@testable import MediaApp

final class HomeUseCaseSuccessMock: XCTestCase {
    
    func testHome_When_Success() {
        let expt = expectation(description: "Parse decodable data and cast to entity")
        let moviesRepo = MoviesRepositorySuccessMock()
        let imagesRepo = ImageRepositorySuccessMock()
        let genresRepo = GenresRepositorySuccessMock()
        let useCase = DefaultHomeUseCase(movieRepository: moviesRepo, imageRepository: imagesRepo, genresRepository: genresRepo)
        
        useCase.execute(completion: { result in
            switch result {
            case .failure(let error):
                XCTAssertNil(error)
            case .success(let entity):
                XCTAssertEqual(entity.sections[0].title, "Popular")
                XCTAssertEqual(entity.sections[1].title, "Now Playing")
                XCTAssertEqual(entity.sections[2].title, "Upcoming")
                
                XCTAssertEqual(entity.sections.first?.movies.first?.movie.id, 823464)
                XCTAssertEqual(entity.genres.first?.name, "Action")
                expt.fulfill()
            }
        })
        wait(for: [expt], timeout: 1)
    }
}
