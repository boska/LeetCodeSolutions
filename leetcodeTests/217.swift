//
//  217.swift
//  leetcode
//
//  Created by boska on 02/02/2017.
//  Copyright © 2017 boska. All rights reserved.
//

import XCTest
func containsDuplicate(_ nums: [Int]) -> Bool {
  var duplicate: [Int: Int?] = [:]
  for num in nums {
    if duplicate[num] != nil { return true }
    duplicate[num] = num
  }
  return false
}
class containsDuplicateTest: XCTestCase {
  func test() {
    XCTAssertEqual(containsDuplicate([]), false)
    XCTAssertEqual(containsDuplicate([1,1]), true)
    XCTAssertEqual(containsDuplicate([1,2,3]), false)
  }
}
