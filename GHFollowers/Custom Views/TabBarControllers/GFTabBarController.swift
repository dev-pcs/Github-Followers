//
//  GFTabBarController.swift
//  GHFollowers
//
//  Created by Priyank Shah on 7/20/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor    = .systemGreen
        viewControllers             = [createSearchNC(), createFavoritesListNC()]
    }
     
     
     func createSearchNC() -> UINavigationController {
         let searchVC                       = SearchVC()
         searchVC.title                     = "Search"
         searchVC.tabBarItem                = UITabBarItem(tabBarSystemItem: .search, tag: 0)
         
         return UINavigationController(rootViewController: searchVC)
     }
     
     
     func createFavoritesListNC() -> UINavigationController {
         let favoritesListVC                = FavoritesListVC()
         favoritesListVC.title              = "Favorites"
         favoritesListVC.tabBarItem         = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
         
         return UINavigationController(rootViewController: favoritesListVC)
     }
}
