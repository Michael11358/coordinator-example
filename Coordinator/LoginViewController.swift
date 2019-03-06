//
//  FeedViewController.swift
//  Coordinator
//
//  Created by Michael Voline on 2019-03-06.
//  Copyright © 2019 _. All rights reserved.
//

import UIKit

protocol LoginViewControllerCoordinatorDelegate: AnyObject {
    func didPressSignupButton()
}

final class LoginViewController: UIViewController {
    
    weak var delegate: LoginViewControllerCoordinatorDelegate?
    
    @objc func didPressExitButton() {
        delegate?.didPressSignupButton()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton()
        button.setTitle("I want to Sign up Instead", for: .normal)
        button.addTarget(self, action: #selector(didPressExitButton), for: .touchUpInside)
        button.sizeToFit()
        button.center = CGPoint(x: 100, y: 200)
        view.addSubview(button)
    }
}
