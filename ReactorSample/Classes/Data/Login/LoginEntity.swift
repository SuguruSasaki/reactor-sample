//
//  LoginEntity.swift
//  ReactorSample
//
//  Created by sugurusasaki on 2018/12/04.
//  Copyright © 2018 sugurusasaki. All rights reserved.
//

import Foundation

protocol LoginModelType {
    func getName() -> String
    
    func getFullname() -> String
}

struct LoginEntity {
    let name: String
    let name2: String
}

extension LoginEntity: LoginModelType{
    
    func getName() -> String {
        return self.name
    }
    
    func getFullname() -> String {
        return self.name + "." + self.name2
    }
}
