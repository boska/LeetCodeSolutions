//
//  2.swift
//  leetcode
//
//  Created by boska on 31/01/2017.
//  Copyright © 2017 boska. All rights reserved.
//

import XCTest
func +(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
  var list1 = l1
  var list2 = l2
  let result: ListNode? = ListNode(0)
  var cursor = result
  var carry = 0
  while list1 != nil || list2 != nil || carry != 0 {
    let sum = (list1?.val ?? 0) + (list2?.val ?? 0) + carry
    carry = sum / 10
    cursor!.val = sum % 10
    list1 = list1?.next
    list2 = list2?.next
    if list1 != nil || list2 != nil || carry != 0 {
      cursor?.next = ListNode(0)
      cursor = cursor?.next
    }
  }
  return result
}
class addTwoNumbersTests: XCTestCase {
    func test() {
      let l0 = ListNode(2, ListNode(4, ListNode(3))) + ListNode(5, ListNode(6, ListNode(4)))
      XCTAssertEqual(l0!.debugDescription, "7 0 8", "")
      
      let l1 = ListNode(1, ListNode(3, ListNode(5))) + ListNode(9, ListNode(5, ListNode(5)))
      XCTAssertEqual(l1!.debugDescription, "0 9 0 1", "")
      
      let l2 = ListNode(0) + ListNode(0)
      XCTAssertEqual(l2!.debugDescription, "0", "")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}
