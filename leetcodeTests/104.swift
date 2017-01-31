//
//  104.swift
//  leetcode
//
//  Created by boska on 31/01/2017.
//  Copyright © 2017 boska. All rights reserved.
//

import XCTest
func maxDepth(_ root: TreeNode?) -> Int {
  if root == nil { return 0 }
  if root?.left == nil && root?.right == nil { return 1 }
  var leftMax = 0
  var rightMax = 0
  if root?.left != nil {
    leftMax = maxDepth(root?.left)
  }
  if root?.right != nil {
    rightMax = maxDepth(root?.right)
  }
  return max(leftMax,rightMax) + 1
}
class maxDepthTests: XCTestCase {
  func test() {
    //XCTAssertEqual(addDigits(38), 2)
  }
}
