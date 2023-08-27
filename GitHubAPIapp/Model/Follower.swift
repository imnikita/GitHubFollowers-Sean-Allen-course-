//
//  Follower.swift
//  GitHubAPIapp
//
//  Created by Nikita Popov on 18.04.2021.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
