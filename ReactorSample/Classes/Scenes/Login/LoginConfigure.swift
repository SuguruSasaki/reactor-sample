//
//  LoginConfigure.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/04.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import Foundation

class LoginConfigure: Configable {
    
    typealias ViewControllerType = LoginViewController
    
    /// Scene設定
    ///
    /// - Parameter viewController: ViewControllerType
    func configure(viewController: ViewControllerType) {
        let repository = LoginRepository(apiStore: LoginAPIStore(), dbStore: LoginDBStore())
        let service    = LoginService(repository: repository)
        let router     = LoginRouter(viewController: viewController)
        let reactor    = LoginReactor(service: service, router: router)
        viewController.reactor = reactor
    }
}
