//
//  LoginViewModel.swift
//  Registration
//
//  Created by Yavuz Yerer on 22.02.2023.
//

import Foundation
class LoginViewModel {
    func checkUserInfo(email: String, password: String) -> Bool {
        if let data = UserDefaults.standard.value(forKey: email) as? String {
            if password == data {
                UserDefaults.standard.set(true, forKey: "isLogin")
                return true
            }else{
                return false
            }
        }
        return false
    }
}

