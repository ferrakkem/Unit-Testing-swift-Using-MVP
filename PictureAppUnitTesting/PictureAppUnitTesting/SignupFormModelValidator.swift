//
//  SignupFormModelValidator.swift
//  PictureAppUnitTesting
//
//  Created by Ferrakkem Bhuiyan on 2020-12-27.
//

import Foundation

class SignupFormModelValidator{
    
    //MARK: - FirstName validate
    func isFirstNameValidate(firstName: String) ->Bool{
        var returnValue = true
        
        if firstName.count < SignupConstants.firstNameMinLength || firstName.count > SignupConstants.firstNameMaxLength {
            returnValue = false
        }
        return returnValue
    }
    
    //MARK: - Email validate
    func isValidEmailFormat(email: String) ->Bool{
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegEx).evaluate(with: email)
    }
    
    
    //MARK: - Password length validate
    func isPasswordValid(password: String) -> Bool{
        var returnValue = true
        
        if password.count < SignupConstants.passwordMinLength || password.count > SignupConstants.passwordMaxLength{
            returnValue = false
        }
        return returnValue
    }
    
    
    //MARK: - Is Password Matched
    func doPasswordsMatch(password: String, repeatPassword: String)-> Bool{
        return password == repeatPassword
    }
    
}
