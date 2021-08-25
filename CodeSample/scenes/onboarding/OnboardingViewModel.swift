//
//  OnboardingViewModel.swift
//  Clustry
//
//  Created by Mohd Ali Khan on 05/11/2020.
//  Copyright © 2021 m@k. All rights reserved.
//

import Foundation

final class OnboardingViewModel {
    weak var view: OnboardingViewRepresentable?
    private let passwordLength = 8
    
    func validateEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    func validatePhone(phone: String) -> Bool  {
        let regularExpressionForPhone = "^\\d{10}$"
        let testPhone = NSPredicate(format:"SELF MATCHES %@", regularExpressionForPhone)
        return testPhone.evaluate(with: phone)
    }
    
    func validatePassword(password: String) -> Bool {
        return ((password.trimmingCharacters(in: .whitespaces)).count >= 8) ? true : false
    }
}
