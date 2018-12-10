//
//  LoginTest.swift
//  ReactorSampleTests
//
//  Created by sugurusasaki on 2018/12/04.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import XCTest
import Quick
import Nimble
import RxSwift

@testable import ReactorSample

class LoginTest: QuickSpec {
    
    let disposeBag:DisposeBag = DisposeBag()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func spec() {
        describe("Login Repository Test"){
            context("Name取得成功の場合") {
                it("print out test user"){
                    let repository = LoginRepository(apiStore: LoginMockStore(), dbStore: LoginLocalStore())
                    repository.post(id: "test", pass: "password").subscribe({ (event) in
                        switch(event) {
                        case .next(let response):
                            expect(response.name).to(equal("suguru"))
                        case .error(let error):
                            debugPrint(error)
                            
                        case .completed:
                            debugPrint("completed")
                        }
                    }).disposed(by: self.disposeBag)
                }
            }
        }
        
        
        describe("Translateのテスト") {
            context("Fullname変換成功の場合") {
                it("print out test user"){
                    let repository = LoginRepository(apiStore: LoginMockStore(), dbStore: LoginLocalStore())
                    repository.post(id: "test", pass: "password").subscribe({ (event) in
                        switch(event) {
                        case .next(let response):
                            expect(response.getFullname()).to(equal("suguru.sasaki"))
                        case .error(let error):
                            debugPrint(error)
                            
                        case .completed:
                            debugPrint("completed")
                        }
                    }).disposed(by: self.disposeBag)
                }
            }
        }
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
