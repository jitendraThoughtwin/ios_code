//
//  UserStore.swift
//  Clustry
//
//  Created by Mohd Ali Khan on 14/11/2020.
//  Copyright © 2021 m@k. All rights reserved.
//

import Foundation

struct UserStore {
    private static let token_key = "token"
    
    static var token: String? {
        return UserDefaults.standard.string(forKey: token_key)
    }
    
    static func save(token:String?) {
        UserDefaults.standard.set(token, forKey: token_key)
    }
}
