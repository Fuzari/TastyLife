//
//  AuthenticationRouter.swift
//  TastyLife
//
//  Created by Fuzari on 29.03.2021.
//

import UIKit

protocol IAuthenticationRouter: class {
    func showMenu()
}

final class AuthenticationRouter: IAuthenticationRouter {
    
    private unowned var context: UIViewController
    
    init(context: UIViewController) {
        self.context = context
    }
    
    func showMenu() {
        let controller = MenuController()
        controller.modalTransitionStyle = .coverVertical
        controller.modalPresentationStyle = .fullScreen
        context.present(controller, animated: true, completion: nil)
    }
}
