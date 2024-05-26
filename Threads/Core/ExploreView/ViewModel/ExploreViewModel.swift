//
//  ExploreViewModel.swift
//  Threads
//
//  Created by melih can durmaz on 22.05.2024.
//

import Foundation
import Firebase

@MainActor
class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task {
            do {
                try await fetchUsers()
            } catch {
                print("Failed to fetch users: \(error)")
            }
        }
    }
    
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
        
    }
}
