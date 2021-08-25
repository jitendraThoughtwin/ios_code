//
//  AppDelegate.swift
//  ScarlettSaloon
//
//  Created by Mohd Ali Khan on 11/02/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: App!
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.initialConfiguration()
        return true
    }
    
    private func initialConfiguration() {
        Thread.sleep(forTimeInterval: 0)
        window = UIWindow(frame: UIScreen.main.bounds)
        configureFirebase()
        appCoordinator = App()
        setupIQKeyBoard()
        configureGoogle()
        UIApplication.shared.applicationIconBadgeNumber = 0
        UIApplication.shared.registerForRemoteNotifications()
        if let window = window {
            appCoordinator.start(window: window)
        }
    }

    private func configureFirebase() { }
    
    private func configureGoogle() { }
    
    private func setupIQKeyBoard() { }
    
    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}
