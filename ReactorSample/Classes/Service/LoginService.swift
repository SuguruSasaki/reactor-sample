//
//  LoginService.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/04.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import RxSwift

// MARK: - Protocol
protocol LoginServiceProtocol {
    
    /// Did Login
    ///
    /// - Parameters:
    ///   - id: string
    ///   - pass: string
    /// - Returns: Observable<LoginModelType>
    func post(id: String, pass: String) -> Observable<LoginModelType>
}

// MARK: - Class
class LoginService: LoginServiceProtocol {
    
    ///
    private let repository: LoginProtocol
    
    /// init
    ///
    /// - Parameter repository: instance of LoginProtocol
    init(repository: LoginProtocol) {
        self.repository = repository
    }
}

// MARK: - Implements
extension LoginService {
    
    /// APIから取得したデータを別の型で返すサンプル
    func post(id: String, pass: String) -> Observable<LoginModelType> {
        return repository.post(id: id, pass: pass)
            .map { $0 as LoginModelType }
    }
}


