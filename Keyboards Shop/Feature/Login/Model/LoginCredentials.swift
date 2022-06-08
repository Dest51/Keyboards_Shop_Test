//
//  LoginCredentials.swift
//  Keyboards Shop
//
//  Created by Admin on 13.04.2022.
//

import Foundation


struct LoginCredentials {
    var email: String
    var password: String
}

extension LoginCredentials {
    static var new: LoginCredentials {
        LoginCredentials(email: "", password: "")
    }
}

