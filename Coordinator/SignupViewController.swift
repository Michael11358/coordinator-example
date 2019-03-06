//
//  MainViewController.swift
//  Coordinator
//
//  Created by Michael Voline on 2019-03-06.
//  Copyright © 2019 _. All rights reserved.
//

import UIKit

protocol SignupViewControllerCoordinatorDelegate: AnyObject {
    func didPressLoginButton()
}

final class SignupViewController: UIViewController {
    
    weak var delegate: SignupViewControllerCoordinatorDelegate?
    
    @objc func didPressButton() {
      delegate?.didPressLoginButton()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton()
        button.setTitle("Go Back to Login", for: .normal)
        button.addTarget(self, action: #selector(didPressButton), for: .touchUpInside)
        button.sizeToFit()
        button.center = CGPoint(x: 100, y: 200)
        view.addSubview(button)
    }
}
