//
//  AppCoordinator.swift
//  Coordinator
//
//  Created by Michael Voline on 2019-03-06.
//  Copyright © 2019 _. All rights reserved.
//

import UIKit

final class AppCoordinator {
    
    private let window: UIWindow
    private let navigation: UINavigationController
    
    init(window: UIWindow, navigation: UINavigationController) {
        self.window = window
        self.navigation = navigation
        window.configure(with: navigation)
        navigation.configure()
    }

    convenience init() {
        self.init(window: UIWindow(), navigation: UINavigationController())
    }

    func start() {
        let login = LoginViewController()
        login.delegate = self
        navigation.pushViewController(login, animated: true)
    }
}

// MARK: - LoginViewControllerCoordinator Delegate
extension AppCoordinator: LoginViewControllerCoordinatorDelegate {
    func didPressLoginButton() {
        navigation.popViewController(animated: true)
    }
}

// MARK: - SignupViewControllerCoordinato rDelegate
extension AppCoordinator: SignupViewControllerCoordinatorDelegate {
    func didPressSignupButton() {
        let signup = SignupViewController()
        signup.delegate = self 
        navigation.pushViewController(signup, animated: true)
    }
}

// MARK: - UIWindow Extension
private extension UIWindow {
    func configure(with navigation: UINavigationController) {
        makeKeyAndVisible()
        rootViewController = navigation
    }
}

// MARK: - UINavigationController Extension
private extension UINavigationController {
    func configure() {
        navigationBar.isHidden = true
        interactivePopGestureRecognizer?.isEnabled = false
    }
}
