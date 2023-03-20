//
//  Week3Tests.swift
//  Week3Tests
//
//  Created by Wonwoo Choi on 20/3/2023.
//

import XCTest
@testable import Week3

final class Week3Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testExample() throws{
        let p = testData[0]
        let p2 = testData[1]
        XCTAssertNotNil(p)
        //XCTAssertNil(p2)//testExample(): XCTAssertNil failed: "Scientist(name: "Einstein", img: "einstein")"
        XCTAssertNotNil(p2)
        XCTAssertEqual(p.name,"Newton")
        XCTAssertEqual(getScientistName(1),"Einstein")
    }
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
