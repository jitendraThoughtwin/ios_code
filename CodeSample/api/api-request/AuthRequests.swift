//
//  AuthRequests.swift
//  Clustry
//
//  Created by Mohd Ali Khan on 14/11/2020.
//  Copyright © 2021 m@k. All rights reserved.
//

import Foundation

struct AuthRequests: RequestRepresentable {
    
    var signup: UserParams.Signup?
    var login: UserParams.Login?
    var changePassword: UserParams.ChangePassword?
    var forgotPassword: UserParams.ForgotPassword?
    var socialLogin: UserParams.SocialLogin?
    
    let requestType: RequestType
    enum RequestType {
        case signup
        case login
        case changePassword
        case forgotPassword
        case socialLogin
        case aboutus
        case logout
    }
    
    init(requestType: RequestType) {
        self.requestType = requestType
    }
    
    init(type: RequestType, params:Codable) {
        self.requestType = type
        switch params {
        case is UserParams.Signup:
            self.signup = params as? UserParams.Signup
        case is UserParams.Login:
            self.login = params as? UserParams.Login
        case is UserParams.ChangePassword:
            self.changePassword = params as? UserParams.ChangePassword
        case is UserParams.ForgotPassword:
            self.forgotPassword = params as? UserParams.ForgotPassword
        case is UserParams.SocialLogin:
            self.socialLogin = params as? UserParams.SocialLogin
        default:break
        }
    }
    
    var method: HTTPMethod {
        switch self.requestType {
        case .aboutus, .logout:
            return .get
        default:
            return .post
        }
    }
    
    var endpoint: String {
        switch self.requestType {
        case .signup:
            return "users/register"
        case .login:
            return "users/login"
        case .changePassword:
            return "users/changepassword"
        case .forgotPassword:
            return "users/forgotpassword"
        case .socialLogin:
            return "users/social_login"
        case .aboutus:
            return "static_page/about_app"
        case .logout:
            return "users/logout"
        }
    }
    
    var parameters: Parameters {
        switch self.requestType {
        case .signup:
            return .body(data: encodeBody(data: signup))
        case .login:
            return .body(data: encodeBody(data: login))
        case .changePassword:
            return .body(data: encodeBody(data: changePassword))
        case .forgotPassword:
            return .body(data: encodeBody(data: forgotPassword))
        case .socialLogin:
            return .body(data: encodeBody(data: socialLogin))
        default:
            return .none
        }
    }
}
