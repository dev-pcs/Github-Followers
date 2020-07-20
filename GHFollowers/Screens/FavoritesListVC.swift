//
//  FavoritesListVC.swift
//  GHFollowers
//
//  Created by Priyank Shah on 7/16/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        
        persistanceManager.retrieveFavorites { result in
            switch result {
            case.success(let favorites):
                print(favorites)
            case.failure(let error):
                break
            }
        }
    }

}
