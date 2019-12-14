//
//  OnMapReleaseTests.swift
//  OnMapReleaseTests
//
//  Created by Sergei Alexeev on 11.12.2019.
//  Copyright © 2019 Sergei Alexeev. All rights reserved.
//

import XCTest
@testable import OnMapRelease

class OnMapReleaseTests: XCTestCase {
    
    let testAddChat: AddChatMock = AddChatMock()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let n1 = testAddChat.count
        let key1 = testAddChat.addChatTest()
        XCTAssert(key1, "Added")
        sleep(2)
        let key2 = (n1 + 1) == testAddChat.count
        XCTAssert(key2, "Added")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}