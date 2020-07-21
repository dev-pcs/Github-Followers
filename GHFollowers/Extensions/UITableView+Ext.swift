//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Priyank Shah on 7/21/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {self.reloadData()}
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
