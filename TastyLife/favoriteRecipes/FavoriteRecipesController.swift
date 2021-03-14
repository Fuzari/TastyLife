//
//  FavoriteRecipesController.swift
//  TastyLife
//
//  Created by Андрей Яковлев on 07.03.2021.
//

import UIKit

final class FavoriteRecipesController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        applyTheme()
    }
}

// MARK: Applying design
private extension FavoriteRecipesController {
    private func applyTheme() {
        view.backgroundColor = UIColor.Common.r51g51b51a1
    }
}
