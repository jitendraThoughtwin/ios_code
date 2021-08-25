//
//  WelcomCoordinator.swift
//  Clustry
//
//  Created by Mohd Ali Khan on 06/11/2020.
//  Copyright © 2021 m@k. All rights reserved.
//

import Foundation

final class WelcomeCoordinator: Coordinator<Scenes> {
    
    weak var delegate: CoordinatorDimisser?
    let controller: WelcomeViewController = WelcomeViewController.from(from: .onboarding, with: .welcome)
    
//    var signup: SignupCoordinator!
//    var login: LoginCoordinator!
    
    override func start() {
        super.start()
        router.setRootModule(controller, hideBar: true)
        self.onStart()
    }
    
    private func onStart() {
        controller.router = self
    }
    
    private func startSignup() {
//        let router = Router()
//        signup = SignupCoordinator(router: router)
//        add(signup)
//        signup.delegate = self
//        signup.start(with: true)
//        self.router.present(signup, animated: true)
    }
    
    private func startLogin() {
//        let router = Router()
//        login = LoginCoordinator(router: router)
//        add(login)
//        login.delegate = self
//        login.start()
//        self.router.present(login, animated: true)
    }
    
   
}

extension WelcomeCoordinator: NextSceneDismisser {
    
    func push(scene: Scenes) {
        switch scene {
        case .login: startLogin()
        case .signup: startSignup()
        default: break
        }
    }
    
    func dismiss(controller: Scenes) {}
}

extension WelcomeCoordinator: CoordinatorDimisser {

    func dismiss(coordinator: Coordinator<Scenes>) {
        remove(child: coordinator)
        router.dismissModule(animated: true, completion: nil)
    }
}
