//
//  258.swift
//  leetcode
//
//  Created by boska on 31/01/2017.
//  Copyright © 2017 boska. All rights reserved.
//

import XCTest
func addDigits(_ num: Int) -> Int {
  if String(num).characters.count == 1 {
    return num
  } else {
    return addDigits(Int(String(num).characters.map { Int(String($0)) ?? 0 }.reduce(0) { $0 + $1 }))
  }
}
class addDigitsTests: XCTestCase {
  func test() {
    XCTAssertEqual(addDigits(38), 2)
  }
}
