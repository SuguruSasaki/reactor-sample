//
//  Routable.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/04.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

// MARK: - Protocol
protocol Routable {
    
    associatedtype ActionType
    
    /// Routing
    ///
    /// - Parameter action: ActionType
    /// - Returns: void
    func navigateTo(action: ActionType) -> Void
}

