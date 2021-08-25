//
//  OnboardingProvider.swift
//  Clustry
//
//  Created by Mohd Ali Khan on 05/11/2020.
//  Copyright © 2021 m@k. All rights reserved.
//

import Foundation

final class OnboardingServiceProvider: OnboardingServiceProvidable {
    
    var delegate: OnboardingServiceProvierDelegate?
    private let task = UserTask()
    
    func signup(param:UserParams.Signup) {
        task.signup(params: param, responseModel: SuccessResponseModel.self) { [weak self](resp, err) in
            if err != nil {
                self?.delegate?.completed(for: .userRegister, with: resp, with: err)
                return
            }
            self?.delegate?.completed(for: .userRegister, with: resp, with: nil)
        }
    }
    
    func login(email: String, password: String) {
        
        task.login(params: UserParams.Login(email: email, password: password, fcm_key: UserStore.token), responseModel: SuccessResponseModel.self) { [weak self](resp, err) in
            if err != nil {
                self?.delegate?.completed(for: .userLogin, with: resp, with: err)
                return
            }
            self?.delegate?.completed(for: .userLogin, with: resp, with: nil)
        }
    }
    
    func forgot(email:String) { }
    
}
