//
//  ErrorMessage.swift
//  GitHubAPIapp
//
//  Created by Nikita Popov on 19.04.2021.
//

import Foundation

enum GHError: String, Error {
    case invalidUserName = "This username created an invalid request. Please try one more time."
    case unableToComplete = "Unable to complete your request. Please, check your Internet connection."
    case invalidResponse = "Invalid response from the server. Please, try again."
    case invalidData = "The data received from the server was invalid. Please, try again."
    
}
