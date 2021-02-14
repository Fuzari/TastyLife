//
//  AuthenticationViewController.swift
//  TastyLife
//
//  Created by Андрей Яковлев on 31.01.2021.
//

import UIKit

final class AuthenticationViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet private var backgroundImageView: UIImageView!
    @IBOutlet private var transparentView: UIView!
    @IBOutlet private var mainLabel: UILabel!
    @IBOutlet private var subLabel: UILabel!
    @IBOutlet private var signInButton: TastyLifeButton!
    @IBOutlet private var newAccountButton: TastyLifeButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        transparentView.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        signInButton.configureButton(with: .transparent)
        signInButton.setTitle("Sign In")
        
        newAccountButton.configureButton(with: .transparent)
        newAccountButton.backgroundColor = .clear
        newAccountButton.setTitle("New account?")
    }
}
