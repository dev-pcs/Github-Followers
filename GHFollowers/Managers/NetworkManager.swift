//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Priyank Shah on 7/17/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import Foundation

class NetworkManager {
    
    //make it singleton
    static let shared   = NetworkManager()
    let baseURL         = "https://api.github.com"
    
    private init() {}
    
    
    func getFollowers(for username: String, page: Int, completed: @escaping([Follower]?, String?) -> Void) {
        let endpoint = baseURL + "/users/\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(nil, "This username created an invalid request")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let _ = error {
                completed(nil, "Unable to complete your request. Please check your internet connection")
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, "invalid response from server. please try again")
                return
            }
            
            guard let data = data else {
                completed(nil, "Data received from server is invalid")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            }catch {
                completed(nil, "the data received from server is invalid")
            }
            
        }
        
        task.resume()
    }
    
}

