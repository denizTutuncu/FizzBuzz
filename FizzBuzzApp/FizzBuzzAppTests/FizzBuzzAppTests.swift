//
//  FizzBuzzAppTests.swift
//  FizzBuzzAppTests
//
//  Created by Deniz Tutuncu on 9/8/21.
//

import XCTest

class FizzBuzzEngine {
    func print(_ number: Int) -> String {
        return "0"
    }
}

class FizzBuzzAppTests: XCTestCase {
    
    func test_print_numberZero() {
        let sut = makeSUT()
        let number = sut.print(0)
        
        XCTAssertEqual(number, "0")
    }
    
    private func makeSUT() -> FizzBuzzEngine {
        let sut = FizzBuzzEngine()
        return sut
    }
}
