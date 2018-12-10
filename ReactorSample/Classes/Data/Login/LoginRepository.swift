//
//  LoginRepository.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/04.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import RxSwift

/// Protocl
protocol LoginProtocol {
    func post(id: String, pass: String) -> Observable<LoginEntity>
    func isLogin() -> Observable<Bool>
}

class LoginRepository {
    
    private let apiStore: LoginAPIType
    private let dbStore: LoginDBType
    
    init(apiStore: LoginAPIType, dbStore: LoginDBType) {
        self.apiStore = apiStore
        self.dbStore = dbStore
    }
}

// MARK: - implements
extension LoginRepository: LoginProtocol {
    
    /// Post ID and Password
    ///
    /// - Parameters:
    ///   - id: string
    ///   - pass: password
    func post(id: String, pass: String) -> Observable<LoginEntity> {
        return self.apiStore.post(id: id, pass: pass)
    }
    
    /// Check Login
    ///
    /// - Returns: Observable<bool>
    func isLogin() -> Observable<Bool> {
        
        return Observable.just(true)
    }
}
