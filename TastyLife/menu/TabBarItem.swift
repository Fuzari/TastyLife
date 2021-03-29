//
//  TabBarItem.swift
//  TastyLife
//
//  Created by Андрей Яковлев on 15.03.2021.
//

import UIKit

enum TabBarItem: Int, CaseIterable {
    case recipes
    case search
    case add
    case favorite
    case profile
    
    var controller: UIViewController {
        switch self {
        case .recipes:
            return RecipesController()
        case .search:
            return SearchRecipesController()
        case .add:
            return AddRecipeController()
        case .favorite:
            return FavoriteRecipesController()
        case .profile:
            return ProfileController()
        }
    }
    
    var itemImage: UIImage? {
        switch self {
        case .recipes:
            return UIImage(named: "panIcon")
        case .search:
            return UIImage(named: "searchIcon")
        case .add:
            return UIImage(named: "plusInCircleIcon")
        case .favorite:
            return UIImage(named: "heartIcon")
        case .profile:
            return UIImage(named: "userInCircleIcon")
        }
    }
}
