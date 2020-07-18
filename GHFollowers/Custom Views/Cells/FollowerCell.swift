//
//  FollowerCell.swift
//  GHFollowers
//
//  Created by Priyank Shah on 7/17/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    static let reuseID = "FollowerCell"
    
    let avatarImageView = UIImageView()
    let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
}
