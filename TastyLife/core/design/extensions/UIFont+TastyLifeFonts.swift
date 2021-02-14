//
//  UIFont+TastyLifeFonts.swift
//  TastyLife
//
//  Created by Андрей Яковлев on 14.02.2021.
//

import UIKit

extension UIFont {
    public final class TastyLife {
        class func playList(with size: CGFloat) -> UIFont? {
            guard let font = UIFont(name: "Playlist Script", size: size) else {
                fatalError("Some problems with Playlist Script font")
            }
            
            return font
        }
        
        class func MontserratAlternatesLight(with size: CGFloat) -> UIFont? {
            guard let font = UIFont(name: "MontserratAlternates-Light", size: size) else {
                fatalError("Some problems with MontserratAlternates-Light font")
            }
            
            return font
        }
        
        class func MontserratAlternatesRegular(with size: CGFloat) -> UIFont? {
            guard let font = UIFont(name: "MontserratAlternates-Regular", size: size) else {
                fatalError("Some problems with MontserratAlternates-Regular font")
            }
            
            return font
        }
        
        class func MontserratAlternatesBold(with size: CGFloat) -> UIFont? {
            guard let font = UIFont(name: "MontserratAlternates-Bold", size: size) else {
                fatalError("Some problems with MontserratAlternates-Bold font")
            }
            
            return font
        }
    }
}
