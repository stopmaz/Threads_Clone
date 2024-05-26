//
//  PreviewProvider.swift
//  Threads
//
//  Created by melih can durmaz on 22.05.2024.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
     static let  shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Mike Ross", username: "mikeRoss1", email: "mikerosss@gmail.com")
    
    let thread = Thread(ownerUid: "123", caption: "This is a test thread", timestamp: Timestamp(), likes:  0)
}
