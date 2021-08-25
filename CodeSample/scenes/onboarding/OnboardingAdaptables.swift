//
//  OnboardingAdaptables.swift
//  Clustry
//
//  Created by Mohd Ali Khan on 05/11/2020.
//  Copyright © 2021 m@k. All rights reserved.
//

import Foundation

enum OnboardingScreenType: String {
    case welcome
    case signup
    case login
    case forgot
}
enum OnboardingAction {
    case inputComplete(_ screen: OnboardingScreenType)
    case editingDidEnd(_ field:String, _ value:String)
    case editingDidChange(_ field:String, _ value:String)
    case requireFields(text:String)
    case validEmail(text:String)
    case errorMessage(_ text:String)
    case userRegister
    case userLogin
    case landing
}
protocol InputFieldAlertDelegate:AnyObject {
    func userInput(_ text: String)
}
protocol InputViewDelegate:AnyObject {
    func onAction(action: OnboardingAction, for screen: OnboardingScreenType)
}
protocol OnboardingViewRepresentable:AnyObject {
    func onAction(_ action: OnboardingAction)
}
protocol OnboardingServiceProvidable:AnyObject {
    var delegate: OnboardingServiceProvierDelegate? { get set }
    func signup(param:UserParams.Signup)
    func login(email:String, password:String)
    func forgot(email:String)
}
protocol OnboardingServiceProvierDelegate:AnyObject {
    func completed<T>(for action:OnboardingAction, with response:T?, with error:APIError?)
}
