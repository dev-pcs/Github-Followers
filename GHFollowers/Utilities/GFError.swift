//
//  GFError.swift
//  GHFollowers
//
//  Created by Priyank Shah on 7/19/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import Foundation

//GFError with raw value of string and error protocol
enum GFError: String, Error {
    case invalidUsername    = "This username created an invalid request. please try again"
    case unableToComplete   = "Unable to complete your request. Please check your internet connection"
    case invalidResponse    = "invalid response from server. please try again"
    case invalidData        = "Data received from server is invalid"
    case unableToFavorite   = "There was an error favoriting this user. Plase try again"
}
