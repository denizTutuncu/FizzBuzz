//
//  FizzBuzzAppTests.swift
//  FizzBuzzAppTests
//
//  Created by Deniz Tutuncu on 9/8/21.
//

import XCTest

class FizzBuzzEngine {
    func print(_ number: Int) -> String {
        return "\(number)"
    }
}

class FizzBuzzAppTests: XCTestCase {
    
    func test_print_numberZero() {
        expect(print: 0, expectedResult: "0")
    }
    
    func test_print_numberOne() {
        expect(print: 1, expectedResult: "1")
    }
    
    private func makeSUT() -> FizzBuzzEngine {
        let sut = FizzBuzzEngine()
        return sut
    }
    
    private func expect(print number: Int, expectedResult: String) {
        let sut = makeSUT()
        XCTAssertEqual(sut.print(number), expectedResult)
    }
}
