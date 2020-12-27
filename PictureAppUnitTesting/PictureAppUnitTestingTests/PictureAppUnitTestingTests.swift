//
//  PictureAppUnitTestingTests.swift
//  PictureAppUnitTestingTests
//
//  Created by Ferrakkem Bhuiyan on 2020-12-26.
//

import XCTest
@testable import PictureAppUnitTesting

class PictureAppUnitTestingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    //MARK: - Testing_SignupFormModelValidator
    func test_signFromModelValidator_whenValidFristNameProvided_shouldReturnTrure(){
        // Arrange
        let sut = SignupFormModelValidator()
        
        //Act
        let isFirstNameValid = sut.isFirstNameValidate(firstName: "Ferrakkem")
        
        //Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValidate() should have retuned TRUE for a valid name but retuned FALSE")
        
    }
    
}
