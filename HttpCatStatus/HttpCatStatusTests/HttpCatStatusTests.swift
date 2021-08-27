//
//  HttpCatStatusTests.swift
//  HttpCatStatusTests
//
//  Created by Jhonathan Wyterlin on 10/08/21.
//

import XCTest
@testable import HttpCatStatus

class HttpCatStatusTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        XCTAssertNotNil(CatListModel().imagem503)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
