//
//  DecimalReprZip.swift
//  leetcode
//
//  Created by boska on 10/02/2017.
//  Copyright © 2017 boska. All rights reserved.
//

import XCTest
func decimalReprZip(a: Int, b: Int) -> Int {
  let digitsA = String(a)
  let digitsB = String(b)
  var result = ""
  for (index,digit) in digitsA.characters.enumerated() {
    if index > digitsB.characters.count - 1 {
      result.append(digitsA[index...digitsA.characters.count - 1])
      return Int(result) ?? -1
    } else if index == digitsA.characters.count - 1 && digitsB.characters.count > digitsA.characters.count {
      result.append(digitsB[index...digitsB.characters.count - 1])
      return Int(result) ?? -1
    }
    result.append(digit)
    result.append(digitsB[index])
  }
  return Int(result) ?? -1
}
extension String {
  subscript(pos: Int) -> String {
    precondition(pos >= 0, "character position can't be negative")
    guard pos < characters.count else { return "" }
    let idx = index(startIndex, offsetBy: pos)
    return self[idx...idx]
  }
  subscript(range: CountableRange<Int>) -> String {
    precondition(range.lowerBound.distance(to: 0) <= 0, "range lowerBound can't be negative")
    let lowerIndex = index(startIndex, offsetBy: range.lowerBound, limitedBy: endIndex) ?? endIndex
    return self[lowerIndex..<(index(lowerIndex, offsetBy: range.upperBound - range.lowerBound, limitedBy: endIndex) ?? endIndex)]
  }
  subscript(range: ClosedRange<Int>) -> String {
    precondition(range.lowerBound.distance(to: 0) <= 0, "range lowerBound can't be negative")
    let lowerIndex = index(startIndex, offsetBy: range.lowerBound, limitedBy: endIndex) ?? endIndex
    return self[lowerIndex..<(index(lowerIndex, offsetBy: range.upperBound - range.lowerBound + 1, limitedBy: endIndex) ?? endIndex)]
  }
}
class decimalReprZipTests: XCTestCase {
  func test() {
    XCTAssertEqual(decimalReprZip(a: 12345, b: 678), 16273845)
    XCTAssertEqual(decimalReprZip(a: 56789, b: 444), 54647489)

  }
}

