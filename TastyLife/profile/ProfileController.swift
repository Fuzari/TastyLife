//
//  ProfileController.swift
//  TastyLife
//
//  Created by Андрей Яковлев on 07.03.2021.
//

import UIKit

final class ProfileController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        applyTheme()
    }
}

// MARK: Applying design
private extension ProfileController {
    private func applyTheme() {
        view.backgroundColor = UIColor.Common.r32g32b32a1
    }
}
