//
//  ArithmeticTests.swift
//  CalculatorTests
//
//  Created by Nathan De Flavis on 24/08/2022.
//

import XCTest
@testable import Calculator

class ArithmeticTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testGetDifference() {
        XCTAssertEqual(0, Arithmetic.getDifference(a: 0, b: 0))
        XCTAssertEqual(-1, Arithmetic.getDifference(a: 0, b: 1))
        XCTAssertEqual(1, Arithmetic.getDifference(a: 1, b: 0))
        XCTAssertEqual(0, Arithmetic.getDifference(a: 1, b: 1))
    }
    
    func testGetNegation() {
        XCTAssertEqual(1, Arithmetic.getNegation(a: -1))
        XCTAssertEqual(0, Arithmetic.getNegation(a: 0))
        XCTAssertEqual(-1, Arithmetic.getNegation(a: 1))
    }
    
    func testGetProduct() {
        XCTAssertEqual(0, Arithmetic.getProduct(a: 0, b: 0))
        XCTAssertEqual(0, Arithmetic.getProduct(a: 0, b: 1))
        XCTAssertEqual(0, Arithmetic.getProduct(a: 1, b: 0))
        XCTAssertEqual(1, Arithmetic.getProduct(a: 1, b: 1))
    }
    
    func testGetQuotient() {
        do {
            try Arithmetic.getQuotient(a: 0, b: 0)
            XCTFail()
        } catch {
        }

        XCTAssertEqual(0, try Arithmetic.getQuotient(a: 0, b: 1))
        
        do {
            try Arithmetic.getQuotient(a: 1, b: 0)
            XCTFail()
        } catch {
        }

        XCTAssertEqual(1, try Arithmetic.getQuotient(a: 1, b: 1))
    }
    
    func testGetSum() {
        XCTAssertEqual(0, Arithmetic.getSum(a: 0, b: 0))
        XCTAssertEqual(1, Arithmetic.getSum(a: 0, b: 1))
        XCTAssertEqual(1, Arithmetic.getSum(a: 1, b: 0))
        XCTAssertEqual(2, Arithmetic.getSum(a: 1, b: 1))
    }
    
    func testGetValueOfPercentage() {
        XCTAssertEqual(0, Arithmetic.getValueOfPercentage(a: 0))
        XCTAssertEqual(0.5, Arithmetic.getValueOfPercentage(a: 50))
        XCTAssertEqual(1, Arithmetic.getValueOfPercentage(a: 100))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
