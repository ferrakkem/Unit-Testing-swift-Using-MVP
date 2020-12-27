//
//  SignupFormModelValidator.swift
//  PictureAppUnitTesting
//
//  Created by Ferrakkem Bhuiyan on 2020-12-27.
//

import Foundation

class SignupFormModelValidator{
    
    func isFirstNameValidate(firstName: String) ->Bool{
        var returnValue = true
        
        if firstName.isEmpty{
            returnValue = false
        }
        return returnValue
    }
}
