//
//  WelcomViewController.swift
//  Clustry
//
//  Created by Mohd Ali Khan on 06/11/2020.
//  Copyright © 2021 m@k. All rights reserved.
//

import UIKit
import AuthenticationServices

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var lblAppTitle: UILabel!
    @IBOutlet weak var lblAppSubtitle: UILabel!
    @IBOutlet weak var lblSignupTitle: UILabel!
    @IBOutlet weak var lblSignupSubtitle: UILabel!
    
    @IBOutlet weak var btnEmail: UIButton!
    @IBOutlet weak var btnApple: UIButton!
    @IBOutlet weak var btnGmail: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnFacebook: UIButton!
    
    @IBOutlet weak var viewFront: UIView!
    @IBOutlet weak var viewEmail: UIView!
    @IBOutlet weak var viewApple: UIView!
    @IBOutlet weak var viewGoogle: UIView!
    @IBOutlet weak var viewFacebook: UIView!
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var cnsFrontViewCenterY: NSLayoutConstraint!
    
    weak var router: NextSceneDismisser?
//    private let viewModel = LoginViewModel(provider: OnboardingServiceProvider())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
}

// MARK:- Instance Methods
extension WelcomeViewController {
    
    private func setup() {

        //        GIDSignIn.sharedInstance()?.restorePreviousSignIn()
        [btnEmail, btnApple, btnFacebook, btnGmail, btnLogin].forEach {
            $0?.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        }
        
        [viewEmail, viewApple, viewFacebook, viewGoogle].forEach {_ in

        }
    }

    private func setSocialLoginValues(email:String, name:String, socialId:String, loginType:SocialLoginType)  {
//        self.viewModel.email = email
//        self.viewModel.full_name = name
//        self.viewModel.social_id = socialId
//        self.viewModel.isverified = false
//        self.viewModel.loginType = loginType
//        if self.viewModel.email != "" {
//            self.viewModel.isverified = true
//        }
        self.socialLogin()
    }
    
    private func socialLogin() {
        // Make api call from view model
        
//        self.viewModel.socialLogin(param: UserParams.SocialLogin(type: viewModel.loginType, registration_type: .saloon, social_id: viewModel.social_id, full_name: viewModel.full_name, user_email: viewModel.email, isverified: viewModel.isverified, fcm_key: viewModel.fcm_key, image_url: viewModel.image_url))
    }
    
    private func navigateToMyBooking() {
//        stopAnimation()
//        router?.push(scene: .myBooking)
    }
    
    
}


// MARK:- Button Action
extension WelcomeViewController {
    
    @objc func buttonPressed(_ sender: UIButton) {
        UIApplication.shared.registerForRemoteNotifications()
        switch sender {
        case btnEmail:
            router?.push(scene: .signup)
        case btnApple:
            appleLogin()
        case btnFacebook:
            facebookAction()
        case btnGmail:
            googleAction()
        case btnLogin:
            router?.push(scene: .login)
        default:
            break
        }
    }
    
    private func googleAction() { }
    
    private func appleLogin() { }
    
    private func facebookAction() { }
    
    
}


extension WelcomeViewController: OnboardingViewRepresentable {
    func onAction(_ action: OnboardingAction) {
        switch action {
        case let .errorMessage(msg):
            print("error message ----> \(msg)")
            break
        case .userLogin:
            navigateToMyBooking()
        default:
            break
        }
    }
}

