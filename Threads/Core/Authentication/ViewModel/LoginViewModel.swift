//
//  LoginViewModel.swift
//  Threads
//
//  Created by melih can durmaz on 17.05.2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published  var email = ""
    @Published  var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
