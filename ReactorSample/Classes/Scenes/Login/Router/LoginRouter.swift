//
//  LoginRouter.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/04.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import UIKit


// MARK: - Class
class LoginRouter: Routable {
    
    typealias ActionType = Action
    
    enum Action {
        case Main
    }
    
    private weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func navigateTo(action: LoginRouter.Action) {
        switch action {
        case .Main:
            debugPrint("main画面に遷移します")
        }
    }
}
