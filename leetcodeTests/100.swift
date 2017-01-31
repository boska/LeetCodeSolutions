//
//  100.swift
//  leetcode
//
//  Created by boska on 31/01/2017.
//  Copyright © 2017 boska. All rights reserved.
//

import XCTest
public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
  }
}
func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
  if p == nil && q == nil {
    return true
  }
  if ( q == nil && p != nil) || ( q != nil && p == nil ) {
    return false
  }
  if p == nil {
    return false
  }
  if q == nil {
    return false
  }
  if p?.val != q?.val {
    return false
  }
  return isSameTree(p!.left,q!.left) && isSameTree(p!.right,q!.right)
}
func ==(lhs: TreeNode, rhs: TreeNode) -> Bool {
  return isSameTree(lhs, rhs)
}
class sameTreeTests: XCTestCase {
  func test() {
    XCTAssertTrue(TreeNode(0) == TreeNode(0))
    let t0 = TreeNode(0)
    t0.right = TreeNode(2)
    let t1 = TreeNode(0)
    t1.right = TreeNode(2)
    XCTAssertTrue(t0 == t1)
  }
}
