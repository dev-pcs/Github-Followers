//
//  SearchVC.swift
//  GHFollowers
//
//  Created by Priyank Shah on 7/16/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {
    
    //MARK: - All Component Variables
    
    let logoimageView       = UIImageView()
    let usernameTextField   = GFTextField()
    let callToActionButton  = GFButton(backgroundColor: .systemGreen, title: "Get Followers")
    
    
    //MARK: - When View is Loaded
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
    
    
    //MARK: - configure screen and constraints
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    
    func configureLogoImageView() {
        view.addSubview(logoimageView)
        logoimageView.adjustsImageSizeForAccessibilityContentSizeCategory = false
        logoimageView.image = UIImage(named: "gh-logo")
        
        
    }
}
