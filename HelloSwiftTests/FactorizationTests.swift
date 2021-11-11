//
//  FactorizationTests.swift
//  HelloSwiftTests
//
//  Created by Klaudia Synarska on 11/11/2021.
//

import XCTest
@testable import HelloSwift

class FactorizationTests: XCTestCase {

    func testFactorsOf1() {
        XCTAssertNil(Factorization.factorize(1))
    }

    func testFactorsOf2() {
        XCTAssertEqual(Factorization.factorize(2), .prime)
    }

    func testFactorsOf4() {
        XCTAssertEqual(Factorization.factorize(4), .composite(factors: [2, 2]))
    }
    
    func testFactorsOf12() {
        XCTAssertEqual(Factorization.factorize(12), .composite(factors: [2, 2, 3]))
    }
    
    func testFactorsOf17() {
        XCTAssertEqual(Factorization.factorize(17), .prime)
    }
}
