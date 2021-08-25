//
//  App.swift
//  Clustry
//
//  Created by Mohd Ali Khan on 05/11/2020.
//  Copyright © 2021 m@k. All rights reserved.
//

import Foundation
import UIKit

class App {
    private var window: UIWindow?
    private var welcomeCoordinator: WelcomeCoordinator
//    private var landingCoordinator: LandingCoordinator
    
    init() {
        welcomeCoordinator = WelcomeCoordinator(router:Router())
//        landingCoordinator = LandingCoordinator(router: Router())
    }
    
    func start(window:UIWindow) {
        self.window = window
        if UserStore.token != nil {
//            landingCoordinator.start()
//            window.rootViewController = landingCoordinator.toPresentable()
        } else {
            welcomeCoordinator.start()
            window.rootViewController = welcomeCoordinator.toPresentable()
        }
        window.makeKeyAndVisible()
    }
}
