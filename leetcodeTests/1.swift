//
//  1.swift
//
//  Created by boska on 31/01/2017.
//  Copyright © 2017 boska. All rights reserved.
//

import XCTest
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map:[Int: Int] = [:]
    for (i,num) in nums.enumerated() {
      if let previous = map[num] {
        return [previous, i]
      } else {
        map[target - num] = i
      }
    }
    return []
}
class twoSumTests: XCTestCase {
    func test() {
      XCTAssertEqual(twoSum([2, 7, 11, 15], 9), [0,1])
    }
}
