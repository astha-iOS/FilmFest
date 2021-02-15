//
//  LibraryViewControllerTests.swift
//  FilmFestTests
//
//  Created by Astha yadav on 14/02/21.
//

import XCTest
@testable import FilmFest

class LibraryViewControllerTests: XCTestCase {
    
    var sut:LibraryViewController!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "LibraryViewController") as! LibraryViewController
        _ = sut.view
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLibraryVC_TableViewNotNil(){
        
        XCTAssertNotNil(sut.libraryTableView)
    }
    
    func testDataSource_setsTableViewDataSource(){
        XCTAssertNotNil(sut.libraryTableView.dataSource)
        XCTAssertTrue(sut.libraryTableView.dataSource is MovieLibraryDataService)
        
    }

}
