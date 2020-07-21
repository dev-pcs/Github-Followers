//
//  GFTitleLabel.swift
//  GHFollowers
//
//  Created by Priyank Shah on 7/17/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import UIKit

class GFTitleLabel: UILabel {
    
    override init(frame: CGRect) {      //designated initializer
        super.init(frame: frame)
        configure()
    }
    
    
    //MARK: - Custom initializer
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        self.init(frame: .zero)         //configure will be called in init
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
    }
    
    
    //MARK: - Customization
    
    private func configure() {
        textColor                   = .label
        adjustsFontSizeToFitWidth   = true
        minimumScaleFactor          = 0.9
        lineBreakMode               = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
}
