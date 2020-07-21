//
//  PersistanceManager.swift
//  GHFollowers
//
//  Created by Priyank Shah on 7/20/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import Foundation

enum persistanceActionType {
    case add, remove
}

enum persistanceManager {
    static private let defaults = UserDefaults.standard
    
    enum keys {static let favorites = "favorites"}
    
    static func updateWith(favorite: Follower, actionType: persistanceActionType, completed: @escaping (GFError?) -> Void) {
        retrieveFavorites{ Result in
            switch Result {
            case.success(var favorites):
                
                switch actionType {
                case.add:
                    guard !favorites.contains(favorite) else {
                        completed(.alreadyinFavorites)
                        return
                    }
                    favorites.append(favorite)
                case.remove:
                    favorites.removeAll { $0 .login == favorite.login}
                }
                completed(save(favorites: favorites))
                
                
            case.failure(let error):
                completed(error)
            }
        }
    }
    
    
    //we are saving a custom object thats why
    static func retrieveFavorites(completed: @escaping (Result<[Follower], GFError>) -> Void) {
        guard let favoritesData = defaults.object(forKey: keys.favorites) as? Data else {
            completed(.success([]))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let favorites = try decoder.decode([Follower].self, from: favoritesData)
            completed(.success(favorites))
        } catch {
            completed(.failure(.unableToFavorite))
        }
    }
    
    
    static func save(favorites: [Follower]) -> GFError? {
        do {
            let encoder = JSONEncoder()
            let encodedFavorites = try encoder.encode(favorites)
            defaults.set(encodedFavorites, forKey: keys.favorites)
            return nil
        }catch {
            return .unableToFavorite
        }
    }
}
