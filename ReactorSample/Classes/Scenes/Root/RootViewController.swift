//
//  RootViewController.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/10.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import UIKit
import RxSwift
import ReactorKit
import RxViewController

class RootViewController: UIViewController, View {
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implmented") }
    
    typealias Reactor = RootReactor
    
    var disposeBag: DisposeBag = DisposeBag()
    
    init(config: RootConfigure) {
        super.init(nibName: nil, bundle: nil)
        config.configure(viewController: self)
    }

    // ライフサイクルメソッドは全てRxでBindします。
    func bind(reactor: Reactor) {
        
        // ViewDidLoadをトリガーにした処理は、重複処理を避けるために、take(1)を追加します。
        self.rx.viewDidLoad
            .take(1)
            .flatMap { (bool) in Observable.just(Reactor.Action.load)}
            .bind(to: reactor.action)
            .disposed(by: self.disposeBag)
        
        self.rx.viewDidAppear
            .flatMap {(bool) in Observable.just(Reactor.Action.next) }
            .bind(to: reactor.action)
            .disposed(by: self.disposeBag)
    }
}
