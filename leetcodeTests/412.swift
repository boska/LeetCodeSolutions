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
    var str = ""
    if index % 3 == 0 {
      str += "Fizz"
    }
    if index % 5 == 0 {
      str += "Buzz"
    }
    if str.isEmpty {
      str = "\(index)"
    }
    result.append(str)
    
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
