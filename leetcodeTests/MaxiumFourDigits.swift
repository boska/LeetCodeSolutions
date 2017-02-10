//
//  MaxiumFourDigits.swift
//  Find the maximum valid time that can be displayed on a digital 
//  clock using four given digits.
//  leetcode
//
//  Created by boska on 10/02/2017.
//  Copyright © 2017 boska. All rights reserved.
//

import Foundation
import XCTest
func maxiumFourDigits(_ digits: [Int]) -> [Int] {
  var sorted = Array(digits.sorted().reversed())
  var result: [Int] = []
  if let h1 = sorted.filter({ $0 <= 2 }).first {
    result.append(h1)
    if let index = sorted.index(of: h1) {
      sorted.remove(at: index)
    }
  }
  if let h2 = sorted.filter({
    if result[0] == 2 {
      return $0 <= 3
    } else if result[0] == 1 || result[0] == 0 {
      return $0 <= 0
    } else {
      return false
    }
  }).first {
    result.append(h2)
    if let index = sorted.index(of: h2) {
      sorted.remove(at: index)
    }
  }
  if let m1 = sorted.filter({ $0 <= 5 }).first {
    result.append(m1)
    if let index = sorted.index(of: m1) {
      sorted.remove(at: index)
    }
    result.append(sorted[0])
  }
  return result
}
class maxiumFourDigitsTests: XCTestCase {
  func test() {
    XCTAssertEqual(maxiumFourDigits([1, 8, 3, 2]), [2, 3, 1, 8])
    XCTAssertEqual(maxiumFourDigits([2, 4, 0, 0]), [2, 0, 4, 0])
    XCTAssertEqual(maxiumFourDigits([1, 8, 3, 2]), [2, 3, 1, 8])
    XCTAssertEqual(maxiumFourDigits([1, 8, 3, 2]), [2, 3, 1, 8])

  }
}
