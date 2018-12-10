//
//  LoginViewController.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/04.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import ReactorKit
import RxViewController

class LoginViewController: UIViewController, View  {
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implmented") }
    
    typealias Reactor = LoginReactor

    var disposeBag: DisposeBag = DisposeBag()
    
    init(config: LoginConfigure){
        super.init(nibName: nil, bundle: nil)
        config.configure(viewController: self)
    }
    
    func bind(reactor: Reactor) {
        self.rx.viewDidLoad
            .take(1)
            .map { .post("user1", "abc123") }
            .bind(to: reactor.action)
            .disposed(by: self.disposeBag)
        
    }
}

// MARK: - Implements
extension LoginViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blue
    }
}


