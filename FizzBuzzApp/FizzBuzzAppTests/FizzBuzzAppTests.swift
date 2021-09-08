//
//  FizzBuzzAppTests.swift
//  FizzBuzzAppTests
//
//  Created by Deniz Tutuncu on 9/8/21.
//

import XCTest

class FizzBuzzEngine {
    func print(_ number: Int) -> String {
        
        if number == 0 {
            return "0"
        } else  if number.isMultiple(of: 15) {
            return "FizzBuzz"
        } else if number.isMultiple(of: 5) {
            return "Buzz"
        } else if number.isMultiple(of: 3) {
            return "Fizz"
        }
        return "\(number)"
    }
}

class FizzBuzzAppTests: XCTestCase {
        
    func test_print_number() {
        expect(print: 0, expectedResult: "0")
        expect(print: 1, expectedResult: "1")
        expect(print: 2, expectedResult: "2")
        expect(print: 4, expectedResult: "4")
        expect(print: 7, expectedResult: "7")
        expect(print: 11, expectedResult: "11")
    }
    
    func test_print_fizzWhenNumberIsMultipleOfThree() {
        expect(print: 3, expectedResult: "Fizz")
        expect(print: 6, expectedResult: "Fizz")
        expect(print: 9, expectedResult: "Fizz")
        expect(print: 12, expectedResult: "Fizz")
    }

    func test_print_buzzWhenNumberIsMultipleOfFive() {
        expect(print: 5, expectedResult: "Buzz")
        expect(print: 10, expectedResult: "Buzz")
        expect(print: 20, expectedResult: "Buzz")
        expect(print: 25, expectedResult: "Buzz")
    }
    
    func test_print_fizzbuzzWhenNumberIsMultipleOfFifteen() {
        expect(print: 15, expectedResult: "FizzBuzz")
        expect(print: 30, expectedResult: "FizzBuzz")
        expect(print: 45, expectedResult: "FizzBuzz")
        expect(print: 60, expectedResult: "FizzBuzz")
    }
    
    private func makeSUT(file: StaticString = #file, line: UInt = #line) -> FizzBuzzEngine {
        let sut = FizzBuzzEngine()
        trackForMemoryLeaks(sut)
        return sut
    }
    
    private func expect(print number: Int, expectedResult: String, file: StaticString = #file, line: UInt = #line) {
        let sut = makeSUT(file: file, line: line)
        XCTAssertEqual(sut.print(number), expectedResult, file: file, line: line)
    }
}
