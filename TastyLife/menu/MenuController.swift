//
//  MenuController.swift
//  TastyLife
//
//  Created by Андрей Яковлев on 14.03.2021.
//

import UIKit

final class MenuController: UITabBarController {
    // MARK: - Private vars
    private var tabBarControllers: [UIViewController] {
        var controllers: [UIViewController] = []
        for item in TabBarItem.allCases {
            let controller = item.controller
            let tabBarItem = UITabBarItem(title: nil, image: item.itemImage, selectedImage: nil)
            tabBarItem.imageInsets = UIEdgeInsets(top: 11, left: 0, bottom: -11, right: 0)
            controller.tabBarItem = tabBarItem
            controllers.append(controller)
        }
        return controllers
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Private methods
    private func configureUI() {
        configureTabBar()
        applyTheme()
    }
    
    private func configureTabBar() {
        viewControllers = tabBarControllers
    }
}

// MARK: Apply theme
private extension MenuController {
    private func applyTheme() {
        tabBar.barTintColor = UIColor.Common.r0g0b0a1
        tabBar.barStyle = .default
        tabBar.tintColor = UIColor.Common.r247g87b82a1
        tabBar.unselectedItemTintColor = UIColor.Common.r230g230b230a1
    }
}
