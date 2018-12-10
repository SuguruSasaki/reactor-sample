//
//  RootRouter.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/10.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import UIKit

// MARK: - Class
class RootRouter: Routable {
    
    typealias ActionType = Action
    
    enum Action {
        case Login
    }
    
    private weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func navigateTo(action: RootRouter.Action) {
        guard let vc = self.viewController else { return }
        switch action {
        case .Login:
            debugPrint("main画面に遷移します")
            vc.present(LoginViewController(config: LoginConfigure()), animated: true, completion: nil)
        }
    }
}

