//
//  UnitTestFuncRunningOrder.swift
//  UnitTestFunctionRunningOderTests
//
//  Created by Ferrakkem Bhuiyan on 2020-12-27.
//

import XCTest
@testable import UnitTestFunctionRunningOder


class UnitTestFuncRunningOrderTest: XCTestCase {

    override func setUp() {
        print("\n")
        print("setUp")
    }
    
    override func tearDown() {
        print("setUp")
        print("\n")
    }
    
    

    
    func testA(){
        print("Running Test A")
    }
    
    
    func testB(){
        print("Running Test B")
    }
    
    
    func testC(){
        print("Running Test C")
    }
    
    func testD(){
        print("Running Test D")
    }
    

    

}
