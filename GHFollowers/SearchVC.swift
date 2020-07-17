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
    
    var isUsernameEntered: Bool { return !usernameTextField.text!.isEmpty}          //return true if empty
    
    
    //MARK: - When View is Loaded
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureLogoImageView()
        configureTextField()
        configureCallToActionButton()
        createDismissKeyboardTapGesture()
    }
    
    
    //MARK: - configure screen and constraints
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    
    func createDismissKeyboardTapGesture() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    
    @objc func pushFollowerListVC() {
        guard isUsernameEntered else {
            presentGFAlertOnMainThread(title: "Empty Username", message: "Please type username, we need to know who to look for 😌", buttonTitle: "Ok")
            return
        }
        let followersListVC         = FollowersListVC()
        followersListVC.username    = usernameTextField.text
        followersListVC.title       = usernameTextField.text
        navigationController?.pushViewController(followersListVC, animated: true)
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
        usernameTextField.delegate = self
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: logoimageView.bottomAnchor, constant: 48),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            usernameTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    //MARK: - Configure CallToActionButton constraints
    
    func configureCallToActionButton() {
        view.addSubview(callToActionButton)
        callToActionButton.addTarget(self, action: #selector(pushFollowerListVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}


extension SearchVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        pushFollowerListVC()
        return true
    }
}
