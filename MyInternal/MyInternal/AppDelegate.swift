//
//  AppDelegate.swift
//  MyInternal
//
//  Created by Elisha Lye on 17/5/22.
//

import UIKit

@main
open class AppDelegate: UIResponder, UIApplicationDelegate {



    public func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    public func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        
        // return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        
        if connectingSceneSession.role == UISceneSession.Role.windowApplication {
            let config = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
            config.delegateClass = SceneDelegate.self
            
            config.storyboard = UIStoryboard(name: "Main", bundle: Bundle(for: ViewController.self))
            return config
        }
        fatalError("Unhandled scene role \(connectingSceneSession.role)")

    }

    public func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

