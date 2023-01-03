//
//  AppDelegate.swift
//  ChatBot
//
//  Created by Jonas Romankiewicz on 29.11.22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = ConversationViewController()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        return true
    }
}
