//
//  UserTask.swift
//  Clustry
//
//  Created by Mohd Ali Khan on 14/11/2020.
//  Copyright © 2021 m@k. All rights reserved.
//

import UIKit

final class UserTask {
    private let dispatcher = SessionDispatcher()
    
    func signup<T:Codable>(params: UserParams.Signup, responseModel: T.Type, completion: @escaping APIResult<T>) {
        dispatcher.execute(requst: AuthRequests(type: .signup, params: params), modeling: responseModel, completion: completion)
    }
    
    func login<T:Codable>(params: UserParams.Login, responseModel: T.Type, completion: @escaping APIResult<T>) {
        dispatcher.execute(requst: AuthRequests(type: .login, params: params), modeling: responseModel, completion: completion)
    }
    
    func forgot<T:Codable>(params: UserParams.ForgotPassword, responseModel: T.Type, completion: @escaping APIResult<T>) {
        dispatcher.execute(requst: AuthRequests(type: .forgotPassword, params: params), modeling: responseModel, completion: completion)
    }
    
    func changePassword<T:Codable>(params: UserParams.ChangePassword, responseModel: T.Type, completion: @escaping APIResult<T>) {
        dispatcher.execute(requst: AuthRequests(type: .changePassword, params: params), modeling: responseModel, completion: completion)
    }
    
    func socialLogin<T:Codable>(params: UserParams.SocialLogin, responseModel: T.Type, completion: @escaping APIResult<T>) {
        dispatcher.execute(requst: AuthRequests(type: .socialLogin, params: params), modeling: responseModel, completion: completion)
    }
    
    func aboutUs(completion:@escaping APIResult<SuccessResponseModel> ) {
        dispatcher.execute(requst: AuthRequests(requestType: .aboutus), modeling: SuccessResponseModel.self, completion:   completion)
    }
}
