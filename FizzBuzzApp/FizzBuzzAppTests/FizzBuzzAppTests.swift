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
    
    private func makeSUT(file: StaticString = #file, line: UInt = #line) -> FizzBuzzEngine {
        let sut = FizzBuzzEngine()
        return sut
    }
    
    private func expect(print number: Int, expectedResult: String, file: StaticString = #file, line: UInt = #line) {
        let sut = makeSUT(file: file, line: line)
        XCTAssertEqual(sut.print(number), expectedResult, file: file, line: line)
    }
}
