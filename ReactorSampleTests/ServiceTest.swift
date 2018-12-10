//
//  ServiceTest.swift
//  ReactorSampleTests
//
//  Created by sugurusasaki on 2018/11/29.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import XCTest
import Quick
import Nimble

@testable import ReactorSample

class ServiceTest: QuickSpec {
    
    override func spec() {
        describe("sample test"){
            context("sample desu") {
                it("print out true"){
                    expect(true).to(equal(true))
                }
            }
        }
    }

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
