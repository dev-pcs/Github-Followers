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
        configureLogoImageView()
        configureTextField()
    }
    
    
    //MARK: - configure screen and constraints
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    
    func configureLogoImageView() {
        view.addSubview(logoimageView)
        logoimageView.translatesAutoresizingMaskIntoConstraints = false
        logoimageView.image = UIImage(named: "gh-logo")!
        
        NSLayoutConstraint.activate([
            logoimageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoimageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoimageView.heightAnchor.constraint(equalToConstant: 200),
            logoimageView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    
    //MARK: - Configure Textfield constraints
    
    func configureTextField() {
        view.addSubview(usernameTextField)
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: logoimageView.bottomAnchor, constant: 48),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            usernameTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
