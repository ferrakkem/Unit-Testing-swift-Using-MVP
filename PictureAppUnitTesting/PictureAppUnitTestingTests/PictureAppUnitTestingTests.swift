//
//  PictureAppUnitTestingTests.swift
//  PictureAppUnitTestingTests
//
//  Created by Ferrakkem Bhuiyan on 2020-12-26.
//

import XCTest
@testable import PictureAppUnitTesting

class PictureAppUnitTestingTests: XCTestCase {
    
    var sut: SignupFormModelValidator!
    
    override func setUp() {
        super.setUp()
        
        sut = SignupFormModelValidator()
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
        
    }
    
    //MARK: - Testing_SignupFormModelValidator
    func test_signFromModelValidator_whenValidFristNameProvided_shouldReturnTrure(){
        // Arrange
        //Act
        let isFirstNameValid = sut.isFirstNameValidate(firstName: "Ferrakkem")
        
        //Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValidate() should have retuned TRUE for a valid name but retuned FALSE")
    }
    
    func testSignupFormModelValidator_whenTooShortFirstNameProvided_shouldReturnFlase(){
        //arrange
        //act
        let isFirstNameValid = sut.isFirstNameValidate(firstName: "f")
        
        //assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValidate() should have returned Flase for first name that is shorter than 2 characters but it has returned TRUE")
    }
    
    func testSignupFormModelValidator_whenTooLongFirstNameProvided_shouldReturnFalse(){
        //arrange
        //act
        let isFirstNameValid = sut.isFirstNameValidate(firstName: "Ferrakkem Bhuiyan")
        //assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValidate() should have returned Flase for first name that is longer than 10 characters but it has returned TRUE")
    }
    
    
    func testSignupFormModelValidator_whenEmailFormattMatch_shouldReturnTrue(){
        //arrange
        //act
        let isValidEmail = sut.isValidEmailFormat(email: "ferrakkem@gmail.com")
        //assert
        XCTAssertTrue(isValidEmail, "The isValidEmailFormat() should have returned TRUE for a correct email format but it has returned FALSE")
    }
    
    
    func testSignupFormModelValidator_whenEmailFormatNotMatch_shouldReturnFalse(){
        //arrange
        //act
        let isValidEmail = sut.isValidEmailFormat(email: "ferrakkem.com")
        //assert
        XCTAssertFalse(isValidEmail, "The isValidEmailFormat() should have returned FALSE for a correct email format but it has returned TRUE")
    }
    
    
    func testSignupFormModelValidator_whenTooShortPasswordProvided_shouldReturnFalse(){
        //arrange
        //act
        let isPasswordValid = sut.isPasswordValid(password: "12")
        //Assert
        XCTAssertFalse(isPasswordValid, "The isPasswordValid() should have returned Flase for a password  that is shorter than \(SignupConstants.passwordMinLength) than 10 characters but it has returned TRUE" )
        
    }
    
    func testSignupFormModelValidator_whenTooLongPasswordProvided_shouldReturnFalse(){
        //arrange
        //act
        let isPasswordValid = sut.isPasswordValid(password: "12332443545435")
        //assert
        XCTAssertFalse(isPasswordValid, "The isPasswordValid() should have returned Flase for a password  that is longer than \(SignupConstants.passwordMaxLength) than 10 characters but it has returned TRUE")
    }
    
    func testSignupFormModelValidator_whenEqualPassowordProvided_shouldReturnTrue(){
        //arrange
        //act
        let doPasswordMatch = sut.doPasswordsMatch(password: "12345678", repeatPassword: "12345678")
        //assert
        XCTAssertTrue(doPasswordMatch, "The isPasswordValid() should have returned true for a password matched but it has returned FALSE" )
    }
    
    func testSignupFormModelValidator_whenEqualPassowordProvided_shouldReturnFalse(){
        //arrange
        //act
        let doPasswordMatch = sut.doPasswordsMatch(password: "12345678", repeatPassword: "123456789")
        //assert
        XCTAssertFalse(doPasswordMatch, "The isPasswordValid() should have returned FALSE for a password not matched but it has returned TRUE" )
    }
    
}
