//
//  RecipeCell.swift
//  TastyLife
//
//  Created by Андрей Яковлев on 05.07.2021.
//

import UIKit

final class RecipeCell: UITableViewCell {
    
    @IBOutlet private var holderView: UIView!
    @IBOutlet private var recipeImageView: UIImageView!
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var estimatedTimeLabel: EdgeInsetLabel!
    
    private let constants = Constants()

    override func awakeFromNib() {
        super.awakeFromNib()
        configureCell()
        setup()
    }
    
    func setup() {
        recipeImageView.image = UIImage(named: "panIcon")
        titleLabel.text = "Real Italian Pizza"
        estimatedTimeLabel.text = "40 min"
    }
    
    private func configureCell() {
        configureHolderView()
        configureImageView()
        configureTitleLabel()
        configureEstimatedTimeLabel()
        applyTheme()
    }
    
    private func configureHolderView() {
        holderView.layer.cornerRadius = constants.holderViewCornerRadius
        holderView.layer.shadowColor = UIColor.Common.r0g0b0a1.cgColor
        holderView.layer.shadowOpacity = 0.25
        holderView.layer.shadowOffset = CGSize(width: 4, height: 4)
    }
    
    private func configureImageView() {
        recipeImageView.layer.cornerRadius = recipeImageView.frame.height / 2
    }
    
    private func configureTitleLabel() {
        titleLabel.textAlignment = .left
    }
    
    private func configureEstimatedTimeLabel() {
        estimatedTimeLabel.textAlignment = .center
        estimatedTimeLabel.layer.cornerRadius = estimatedTimeLabel.frame.height / 2
        estimatedTimeLabel.layer.masksToBounds = true
        estimatedTimeLabel.textInsets = constants.estimatedTimeLabelTextInsets
    }
}

// MARK: Apply theme
private extension RecipeCell {
    func applyTheme() {
        backgroundColor = .clear
        holderView.backgroundColor = UIColor.Common.r32g32b32a1
        titleLabel.textColor = UIColor.Common.r255g255b255a1
        estimatedTimeLabel.textColor = UIColor.Common.r230g230b230a1
        estimatedTimeLabel.layer.backgroundColor = UIColor.Common.r200g75b71a1.cgColor
    }
}

// MARK: Constants
private extension RecipeCell {
    struct Constants {
        let holderViewCornerRadius: CGFloat = 8.0
        let estimatedTimeLabelCornerRaduis: CGFloat = 8.0
        let estimatedTimeLabelTextInsets: UIEdgeInsets =
            UIEdgeInsets(top: 2, left: 15, bottom: 2, right: 15)
    }
}

