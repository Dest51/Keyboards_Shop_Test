//
//  RegistrationDetails.swift
//  Keyboards Shop
//
//  Created by Admin on 13.04.2022.
//

import Foundation


struct RegistrationDetails {
    var email: String
    var password: String
    var firstName: String
    var lastName: String
    var occupation: String
}

extension RegistrationDetails {
    
    static var new: RegistrationDetails {
        RegistrationDetails(email: "",
                            password: "",
                            firstName: "",
                            lastName: "",
                            occupation: "")
    }
    
}
