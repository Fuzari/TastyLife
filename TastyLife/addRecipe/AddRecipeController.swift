//
//  AddRecipeController.swift
//  TastyLife
//
//  Created by Андрей Яковлев on 07.03.2021.
//

import UIKit

final class AddRecipeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        applyTheme()
    }
}

// MARK: Applying design
private extension AddRecipeController {
    private func applyTheme() {
        view.backgroundColor = UIColor.Common.mainBackgroundColor
    }
}
