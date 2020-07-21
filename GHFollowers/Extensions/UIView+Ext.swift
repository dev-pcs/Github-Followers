//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Priyank Shah on 7/21/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import UIKit

extension UIView {
    
    func pinToEdges(of superview: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        ])
    }
    
    
    func addSubViews(_ views: UIView...) {        //variadic parameter it will turn views into an array
        for view in views {addSubview(view)}
    }
}


