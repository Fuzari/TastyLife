//
//  RecipesController.swift
//  TastyLife
//
//  Created by Андрей Яковлев on 07.03.2021.
//

import UIKit

final class RecipesController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        applyTheme()
    }
}

// MARK: Applying design
private extension RecipesController {
    private func applyTheme() {
        view.backgroundColor = UIColor.Common.mainLighterBackgroundColor
    }
}
