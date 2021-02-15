//
//  MovieManagerTests.swift
//  FilmFestTests
//
//  Created by Astha yadav on 13/02/21.
//

import XCTest
@testable import FilmFest
class MovieManagerTests: XCTestCase {
    
    var movieManager = MovieManager()
    let comdeyMovie = Movie(title: "Comdey Movie")
    let dramaMovie = Movie(title: "Drama Movie")
    let actionMovie = Movie(title: "Action Movie")
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    //MARK:- test init
    func testInit_MovieToSee_ReturnZero(){
        
        XCTAssertEqual(movieManager.movieToSeeCount, 0)
        
    }
    
    func testInit_MovieSenn_ReturnZero(){
   
        XCTAssertEqual(movieManager.movieSeenCount, 0)
    }
    
    //MARK:- Add and query
    func testAdd_MovieToSee_ReturnOne(){
        
        let testMovie = comdeyMovie
        movieManager.addMovie(movie:testMovie)
        XCTAssertEqual(movieManager.movieToSeeCount, 1)
            
    }
    
    func testQuery_ReturnMovieAtIndex(){
        let testMovie = dramaMovie
        movieManager.addMovie(movie:testMovie)
        
        let movieQuery = movieManager.movieAtIndex(index:0)
        XCTAssertEqual(testMovie.title, movieQuery.title)
    }
    
    //MARK:- test check off
    func testCheckOfMovie_UpdateMovieManagerCount(){
        movieManager.addMovie(movie: actionMovie)
        movieManager.checkOffMovieAtIndex(index:0)
        
        XCTAssertEqual(movieManager.movieToSeeCount, 0)
        XCTAssertEqual(movieManager.movieSeenCount, 1)
        
        
    }
    
    func testCheckOfMovie_RemoveMovieFromArray(){
        movieManager.addMovie(movie: comdeyMovie)
        movieManager.addMovie(movie: dramaMovie)
        movieManager.checkOffMovieAtIndex(index: 0)
        
        XCTAssertEqual(movieManager.movieAtIndex(index: 0).title, dramaMovie.title)
        
        
    }
    
    func testCheckOfMovie_ReturnsMovieAtIndex(){
        movieManager.addMovie(movie: comdeyMovie)
        movieManager.checkOffMovieAtIndex(index: 0)
        
        let movieQueried = movieManager.checkedOffMovieAtIndex(index: 0)
        XCTAssertEqual(comdeyMovie.title, movieQueried.title)
        
    }
    
    func testEquatable_ReturnTrue(){
        let actionMovieOne = Movie(title: "Action")
        let actionMovieTwo = Movie(title: "Action")
        XCTAssertEqual(actionMovieOne, actionMovieTwo)
    }
    
    func testEquatable_ReturnNotEqualDiffTitle(){
        let actionMovieOne = Movie(title: "Action")
        let actionMovieTwo = Movie(title: "Drama")
        XCTAssertNotEqual(actionMovieOne, actionMovieTwo)
    }
    
    func testEquatable_ReturnNotEqualDiffReleaseDate(){
        let actionMovieOne = Movie(title: "Action",releaseDate: "2000")
        let actionMovieTwo = Movie(title: "Action",releaseDate: "2002")
        XCTAssertNotEqual(actionMovieOne, actionMovieTwo)
    }
    
    func testClearArrays_ReturnArrayCountZero(){
        movieManager.addMovie(movie: comdeyMovie)
        movieManager.addMovie(movie: dramaMovie)
        movieManager.checkOffMovieAtIndex(index: 0)
        
        XCTAssertEqual(movieManager.movieToSeeCount,1)
        XCTAssertEqual(movieManager.movieSeenCount,1)
        
        movieManager.clearArrays()
        XCTAssertEqual(movieManager.movieToSeeCount,0)
        XCTAssertEqual(movieManager.movieSeenCount,0)
    }
    
    func testDuplicate_ShouldNotBeAddedToArray(){
        movieManager.addMovie(movie: comdeyMovie)
        movieManager.addMovie(movie: comdeyMovie)
        XCTAssertEqual(movieManager.movieToSeeCount, 1)
    }
    
}

