//
//  Configure.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/04.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import Foundation

protocol Configable {
    
    associatedtype ViewControllerType
    
    /// Sceneの設定 DIをここで実装
    ///
    /// - Parameter viewController: ViewControllerType
    func configure(viewController: ViewControllerType)
}
