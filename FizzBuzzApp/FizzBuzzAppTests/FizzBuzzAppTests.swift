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
        let sut = makeSUT()
        let result = sut.print(0)
        
        XCTAssertEqual(result, "0")
    }
    
    func test_print_numberOne() {
        let sut = makeSUT()
        let result = sut.print(1)
        
        XCTAssertEqual(result, "1")
    }
    
    private func makeSUT() -> FizzBuzzEngine {
        let sut = FizzBuzzEngine()
        return sut
    }
}
