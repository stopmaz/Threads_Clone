//
//  RegistrationViewModel.swift
//  Threads
//
//  Created by melih can durmaz on 17.05.2024.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published  var email = ""
    @Published  var password = ""
    @Published  var username = ""
    @Published  var fullname = ""
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(
            withEmail: email,
            password: password,
            fullname: fullname,
            username: username
        )
    }
}
