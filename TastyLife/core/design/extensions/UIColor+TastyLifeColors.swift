//
//  UIColor+TastyLifeColors.swift
//  TastyLife
//
//  Created by Андрей Яковлев on 14.02.2021.
//

import UIKit

extension UIColor {
    
    final public class Common {
        // MARK: Backgrounds
        class var mainBackgroundColor: UIColor {
            UIColor(red: 38/255, green: 38/255, blue: 38/255, alpha: 1.0)
        }
        
        class var mainDarkerBackgroundColor: UIColor {
            UIColor(red: 32/255, green: 32/255, blue: 32/255, alpha: 1.0)
        }
        
        class var mainLighterBackgroundColor: UIColor {
            UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1.0)
        }
        
        // MARK: - Labels
        class var mainTitleColor: UIColor {
            UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        }
        
        class var subtitleColor: UIColor {
            UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1.0)
        }
        
        class var labelFontColor: UIColor {
            UIColor(red: 200/255, green: 75/255, blue: 71/255, alpha: 1.0)
        }
        
        class var highlightedTitleColor: UIColor {
            UIColor(red: 247/255, green: 87/255, blue: 82/255, alpha: 1.0)
        }
        
        // MARK: - Buttons
        class var transparentButtonColor: UIColor {
            UIColor(red: 157/255, green: 157/255, blue: 157/255, alpha: 0.5)
        }
        
        class var transparentButtonTintColor: UIColor {
            UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1.0)
        }
        
        class var commonButtonColor: UIColor {
            UIColor(red: 200/255, green: 75/255, blue: 71/255, alpha: 1.0)
        }
        
        class var commonTintColor: UIColor {
            UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        }
        
        // MARK: - Search bar
        class var searchAreaColor: UIColor {
            UIColor(red: 65/255, green: 65/255, blue: 65/255, alpha: 1.0)
        }
        
        class var searchAreaPlaceholderColor: UIColor {
            UIColor(red: 160/255, green: 160/255, blue: 160/255, alpha: 1.0)
        }
        
        class var searchAreaTextColor: UIColor {
            UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1.0)
        }
        
        // MARK: - Tab view
        class var tabViewSelectedColor: UIColor {
            UIColor(red: 247/255, green: 87/255, blue: 82/255, alpha: 1.0)
        }
        
        // MARK: - Tab bar
        class var commonTintTabBarColor: UIColor {
            UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        }
        
        class var highlightedTabBarColor: UIColor {
            UIColor(red: 247/255, green: 87/255, blue: 82/255, alpha: 1.0)
        }
        
        // MARK: - Bar buttons
        class var commonBarButtonColor: UIColor {
            UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1.0)
        }
        
        class var highlightedBarButtonColor: UIColor {
            UIColor(red: 247/255, green: 87/255, blue: 82/255, alpha: 1.0)
        }
    }
}
