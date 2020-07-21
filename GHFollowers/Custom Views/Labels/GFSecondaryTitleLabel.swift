//
//  GFSecondaryTitleLabel.swift
//  GHFollowers
//
//  Created by Priyank Shah on 7/19/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    //MARK: - Custom initializer
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(FontSize: CGFloat) {
        self.init(frame: .zero)
        font = UIFont.systemFont(ofSize: FontSize, weight: .medium)
    }
    
    
    //MARK: - Customization
    private func configure() {
        textColor                   = .secondaryLabel
        adjustsFontSizeToFitWidth   = true
        minimumScaleFactor          = 0.9
        lineBreakMode               = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
}
