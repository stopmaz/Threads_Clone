//
//  User.swift
//  Threads
//
//  Created by melih can durmaz on 21.05.2024.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let username: String
    let email: String
    var profileImageUrl: String?
    var bio: String?
}
