//
//  SearchRecipesController.swift
//  TastyLife
//
//  Created by Андрей Яковлев on 07.03.2021.
//

import UIKit

final class SearchRecipesController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        applyTheme()
    }
}

// MARK: Applying design
private extension SearchRecipesController {
    private func applyTheme() {
        view.backgroundColor = UIColor.Common.mainLighterBackgroundColor
    }
}
