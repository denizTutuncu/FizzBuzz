//
//  FizzBuzzEngine.swift
//  FizzBuzzApp
//
//  Created by Deniz Tutuncu on 9/8/21.
//

public class FizzBuzzPaser {
    public static func parse(_ number: Int) -> String {
        
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
