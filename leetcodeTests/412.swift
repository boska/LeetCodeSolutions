//
//  412.swift
//  leetcode
//
//  Created by boska on 18/04/2017.
//  Copyright © 2017 boska. All rights reserved.
//

import XCTest
func fizzBuzz(_ n: Int) -> [String] {
  var result: [String] = []
  for index in 1...n {
    if index % 15 == 0 {
      result.append("FizzBuzz") }
    else if index % 3 == 0 {
      result.append("Fizz") }
    else if index % 5 == 0 {
      result.append("Buzz") }
    else {
      result.append("\(index)")
    }
  }
  return result
}
class fizzBuzzTest: XCTestCase {
  func test() {
    let result = [
      "1",
      "2",
      "Fizz",
      "4",
      "Buzz",
      "Fizz",
      "7",
      "8",
      "Fizz",
      "Buzz",
      "11",
      "Fizz",
      "13",
      "14",
      "FizzBuzz"
    ]
    XCTAssertEqual(fizzBuzz(15), result)
  }
}
