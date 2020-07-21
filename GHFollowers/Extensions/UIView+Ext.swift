//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Priyank Shah on 7/21/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSubViews(_ views: UIView...) {        //variadic parameter it will turn views into an array
        for view in views {addSubview(view)}
    }
}


