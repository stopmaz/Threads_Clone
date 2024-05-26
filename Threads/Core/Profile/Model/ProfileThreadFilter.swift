//
//  ProfileThreadFilter.swift
//  Threads
//
//  Created by melih can durmaz on 7.05.2024.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    
    case threads 
    case replies
    
    var title: String {
        
        switch self {
        case .threads: return "Threads"
        case .replies: return "Replies"
        }
        
    }
    var id: Int { return self.rawValue }
}
