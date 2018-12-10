//
//  ReactorSampleTests.swift
//  ReactorSampleTests
//
//  Created by sugurusasaki on 2018/11/27.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import XCTest
import Quick
import Nimble

@testable import ReactorSample

class ReactorSampleTests: QuickSpec {

    override func spec() {
        describe("State.isActiveの値を確認する"){
            context("trueの場合"){
                it("print out 'true'"){
                    let reactor = SampleReactor()
                    reactor.state
                        .map {$0.isActive}
                        .filter {$0}
                        .subscribe({ (event) in
                        switch event {
                        case .next(let bool):
                            expect(bool).to(equal(true))
                            
                        case .error(let error):
                            debugPrint(error)
                            expect(false).to(equal(true))
                            
                        case .completed:
                            debugPrint("completed")
                        }
                    })
                    reactor.action.onNext(SampleReactor.Action.Load)
                }
            }
        }
    }

    /* 以下はXCTestのコードなので削除して大丈夫です */
    
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
