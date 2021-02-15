//
//  MovieStructTests.swift
//  FilmFestTests
//
//  Created by Astha yadav on 13/02/21.
//

import XCTest

@testable import FilmFest

class MovieStructTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testInit_MovieWithTitle(){
        let testMovie = Movie(title:"Blockbuster")
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.title, "Blockbuster")
    }

    func testInit_setMovieTitleWithRelaseDate(){
        
        let testMovie = Movie(title: "Comedy" , releaseDate:"2000")
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.releaseDate, "2000")
    }
}
