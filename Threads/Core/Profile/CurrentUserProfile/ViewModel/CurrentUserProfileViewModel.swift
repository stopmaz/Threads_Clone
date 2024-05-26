//
//  ProfileViewModel.swift
//  Threads
//
//  Created by melih can durmaz on 21.05.2024.
//

import Foundation
import Combine
import PhotosUI
import SwiftUI

class CurrentUserProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
            //print("DEBUG: User in view model from combine is \(user)")
        }.store(in: &cancellables)
    }
    
    
}
