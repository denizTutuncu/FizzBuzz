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
        }
        
        if number % 3 == 0 {
            return "Fizz"
        }
        
        if number % 5 == 0 {
            return "Buzz"
        }
        
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
    
    func test_print_fizzWhenNumberIsThree() {
        expect(print: 3, expectedResult: "Fizz")
    }
    
    func test_print_fizzWhenNumberIsMultipleOfThree() {
        let multiplesOfThree = [3, 6, 9]
        
        multiplesOfThree.forEach { number in
            expect(print: number, expectedResult: "Fizz")
        }
    }
    
    func test_print_buzzzWhenNumberIsFive() {
        expect(print: 5, expectedResult: "Buzz")
    }
    
    func test_print_buzzWhenNumberIsMultipleOfFive() {
        let multiplesOfFive = [10, 20, 25]
        
        multiplesOfFive.forEach { number in
            expect(print: number, expectedResult: "Buzz")
        }
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
