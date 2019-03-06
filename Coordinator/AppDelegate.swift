//
//  AppDelegate.swift
//  Coordinator
//
//  Created by Michael Voline on 2019-03-06.
//  Copyright © 2019 _. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    private let coordinator = AppCoordinator()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        coordinator.start()
        return true
    }
}
