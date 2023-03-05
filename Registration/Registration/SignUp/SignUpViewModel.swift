//
//  ViewModel.swift
//  Registration
//
//  Created by Yavuz Yerer on 22.02.2023.
//

import Foundation

class SignUpViewModel {
    func saveUserInfo(email: String, password: String) {
        UserDefaults.standard.set(password, forKey: email)
    }
}

