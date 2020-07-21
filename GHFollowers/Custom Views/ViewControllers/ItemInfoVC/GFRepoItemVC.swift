//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Priyank Shah on 7/19/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import UIKit

protocol  GFRepoItemVCDelegate: class {
    func didtapGithubProfile(for user: User)
}

class GFRepoItemVC: GFItemInfoVC {
    
    weak var delegate: GFRepoItemVCDelegate!          //to prvent retain cycle, keep delegate weak
    
    
    
    init(user: User, delegate: GFRepoItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "Github profile")
    }
    
    
    override func actionButtonTapped() {
        delegate.didtapGithubProfile(for: user)
    }
}
