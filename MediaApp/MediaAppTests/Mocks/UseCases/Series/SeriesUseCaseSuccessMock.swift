//
//  SeriesUseCaseSuccessMock.swift
//  MediaAppTests
//
//  Created by Alex Lin Segarra on 7/4/24.
//

import Foundation
import XCTest
@testable import MediaApp

final class SeriesUseCaseSuccessMock: XCTestCase {
    
    func testSeries_When_Success() {
        let expt = expectation(description: "Parse decodable data and cast to entity")
        let seriesRepo = SeriesRepositorySuccessMock()
        let imagesRepo = ImageRepositorySuccessMock()
        let useCase = DefaultSeriesUseCase(seriesRepository: seriesRepo, imageRepository: imagesRepo)
        
        useCase.execute(completion: { result in
            switch result {
            case .failure(let error):
                XCTAssertNil(error)
            case .success(let entity):
                XCTAssertEqual(entity.sections[0].title, "On The Air")
                XCTAssertEqual(entity.sections[1].title, "Top Rated")
                XCTAssertEqual(entity.sections[2].title, "Popular")
                
                expt.fulfill()
            }
        })
        wait(for: [expt], timeout: 1)
    }
}
