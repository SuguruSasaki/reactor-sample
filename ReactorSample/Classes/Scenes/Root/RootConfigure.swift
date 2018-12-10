//
//  RootConfigure.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/10.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import Foundation

class RootConfigure: Configable {
    
    typealias ViewControllerType = RootViewController
    
    /// Scene設定
    ///
    /// - Parameter viewController: ViewControllerType
    func configure(viewController: ViewControllerType) {
        let router     = RootRouter(viewController: viewController)
        let reactor    = RootReactor(router: router)
        viewController.reactor = reactor
    }
}

