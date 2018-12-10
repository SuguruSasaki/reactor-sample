//
//  LoginDBStore.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/04.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import RxSwift

protocol LoginDBType {
    
    /// 保存処理
    ///
    /// - Parameter entity: entity description
    /// - Returns: return value description
    func save(entity: LoginEntity) -> Observable<Bool>
}

// MARK: - implements
class LoginDBStore: LoginDBType {
    
    func save(entity: LoginEntity) -> Observable<Bool> {
        // 省略
        return Observable.just(true)
    }
}
