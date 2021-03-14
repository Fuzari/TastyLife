//
//  CommonButton.swift
//  TastyLife
//
//  Created by Андрей Яковлев on 31.01.2021.
//

import UIKit

public final class TastyLifeButton: UIButton {
    
    private let constants = Constants()
    private var type: TastyLifeButtonType = .common
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public func configureButton(with buttonType: TastyLifeButtonType) {
        type = buttonType
        clipsToBounds = true
        layer.cornerRadius = frame.height / 2
        switch type {
        case .common:
            setupCommonButton()
        case .transparent:
            setupTransparentButton()
        }
    }
    
    public func setTitle(_ title: String) {
        let attributeTitle = NSAttributedString(string: title,
                                                attributes: [NSAttributedString.Key.font: buttonFont()])
        setAttributedTitle(attributeTitle, for: .normal)
        setAttributedTitle(attributeTitle, for: .highlighted)
    }
    
    private func setupCommonButton() {
        backgroundColor = UIColor.Common.r200g75b71a1
        tintColor = UIColor.Common.r255g255b255a1
    }
    
    private func setupTransparentButton() {
        backgroundColor = UIColor.Common.r157g157b157a1
        tintColor = UIColor.Common.r230g230b230a1
    }
    
    private func buttonFont() -> UIFont {
        let font: UIFont?
        switch type {
        case .common:
            font =  UIFont.TastyLife.MontserratAlternatesRegular(with: constants.buttonTitleSize)
        case .transparent:
            font = UIFont.TastyLife.MontserratAlternatesLight(with: constants.buttonTitleSize)
        }
        
        guard let resultFont = font else {
            return UIFont.systemFont(ofSize: constants.buttonTitleSize)
        }
        
        return resultFont
    }
    
    private func setBackgroundColor(color: UIColor, forState: UIControl.State) {
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        UIGraphicsGetCurrentContext()!.setFillColor(color.cgColor)
        UIGraphicsGetCurrentContext()!.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let colorImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.setBackgroundImage(colorImage, for: forState)
    }
}

public extension TastyLifeButton {
    enum TastyLifeButtonType {
        case common
        case transparent
    }
}

private extension TastyLifeButton {
    struct Constants {
        let cornerRadius: CGFloat = 22.0
        let buttonTitleSize: CGFloat = 16.0
    }
}
