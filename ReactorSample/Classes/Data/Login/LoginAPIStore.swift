//
//  LoginAPIStore.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/04.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import RxSwift

// MARK: - Protocol
protocol LoginAPIType {
    
    ///
    ///
    /// - Parameters:
    ///   - id: id description
    ///   - pass: pass description
    /// - Returns: return value description
    func post(id: String, pass: String) -> Observable<LoginEntity>
}


// MARK: - Implements
class LoginAPIStore: LoginAPIType {
    
    func post(id: String, pass: String) -> Observable<LoginEntity> {
        return Observable<LoginEntity>.create({observer in
            
            // 本来はここで通信処理
            
            let entity = LoginEntity(name: "test user", name2: "name2")
            observer.onNext(entity)
            observer.onCompleted()
            
            return Disposables.create()
        })
    }
}


