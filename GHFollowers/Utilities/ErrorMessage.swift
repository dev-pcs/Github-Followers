//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Priyank Shah on 7/17/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import Foundation

//GFError with raw value of string and erro protocol
enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. please try again"
    case unableToComplete = "Unable to complete your request. Please check your internet connection"
    case invalidResponse = "invalid response from server. please try again"
    case invalidData = "Data received from server is invalid"
}
