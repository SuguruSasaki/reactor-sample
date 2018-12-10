//
//  LoginMockStore.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/04.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import RxSwift

class LoginMockStore {
    
}


// MARK: - implements
extension LoginMockStore: LoginAPIType {
    
    func post(id: String, pass: String) -> Observable<LoginEntity> {
        return Observable<LoginEntity>.create({observer in
            
            // 本来はここで通信処理
            
            let entity = LoginEntity(name: "suguru", name2: "sasaki")
            observer.onNext(entity)
            observer.onCompleted()
            
            return Disposables.create()
        })
    }
}
