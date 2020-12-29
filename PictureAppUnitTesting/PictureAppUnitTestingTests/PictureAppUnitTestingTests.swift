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
    
}
