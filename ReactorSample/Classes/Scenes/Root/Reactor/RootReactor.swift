//
//  RootReactor.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/10.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import RxSwift
import ReactorKit

class RootReactor: Reactor {
    
    enum Action {
        case load
        case next
    }
    
    enum Mutation {
        case didLoad
        case navigate
    }
    
    struct State {
        
    }
    
    ///
    let initialState: RootReactor.State = State()
    
    ///
    let router: RootRouter
    
    
    /// init
    ///
    /// - Parameter router: RootRouter
    init(router: RootRouter) {
        self.router = router
    }
    
    func mutate(action: RootReactor.Action) -> Observable<RootReactor.Mutation> {
        switch action {
        case .load:
            return Observable.just(Mutation.didLoad)
        case .next:
            self.router.navigateTo(action: RootRouter.Action.Login)
            return Observable.just(Mutation.navigate)
        }
        
    }
    
    func reduce(state: RootReactor.State, mutation: RootReactor.Mutation) -> RootReactor.State {
        var newState = state
        switch mutation {
        case .didLoad:
            debugPrint("didLoad...")
        case .navigate:
            debugPrint("navigate...")
        }
        return newState
    }
}
