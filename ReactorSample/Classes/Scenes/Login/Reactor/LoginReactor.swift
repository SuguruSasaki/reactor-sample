//
//  LoginReactor.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/04.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import Foundation
import ReactorKit
import RxSwift

class LoginReactor: Reactor {
    
    enum Action {
        case post(String, String)
    }
    
    enum Mutation {
        case didLogin(LoginModelType)
    }
    
    struct State {
        var model: LoginModelType?
    }
    
    let initialState: LoginReactor.State = State( model: nil)
    
    //
    private let service: LoginServiceProtocol
    private var router: LoginRouter
    
    init(service: LoginServiceProtocol, router: LoginRouter){
        self.service = service
        self.router = router
    }
    
}

extension LoginReactor {
    
    func mutate(action: LoginReactor.Action) -> Observable<LoginReactor.Mutation> {
        switch action {
        case .post(let id, let pass):
            return self.service.post(id: id, pass: pass)
                .flatMap { response -> Observable<Mutation> in
                    return Observable.just(.didLogin(response))
                }
        }
    }
    
    func reduce(state: LoginReactor.State, mutation: LoginReactor.Mutation) -> LoginReactor.State {
        var newState = state
        
        switch mutation {
        case .didLogin(let model):
            newState.model = model
        }
        
        return newState
    }
}
