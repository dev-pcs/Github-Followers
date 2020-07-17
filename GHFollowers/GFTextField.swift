//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Priyank Shah on 7/16/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import UIKit

class GFTextField: UITextField {
    
    //MARK: - Textfield Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: - Textfield Customization
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius                  = 10
        layer.borderWidth                   = 2
        layer.borderColor                   = UIColor.systemGray4.cgColor
        
        textColor                           = .label
        tintColor                           = .label
        textAlignment                       = .center
        font                                = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontForContentSizeCategory   = true
        minimumFontSize                     = 12
        
        backgroundColor                     = .tertiarySystemBackground
        autocorrectionType                  = .no
        
        placeholder = "Enter a username"
    }
}

