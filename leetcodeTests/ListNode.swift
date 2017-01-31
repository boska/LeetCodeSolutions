//
//  ListNode.swift
//  leetcode
//
//  Created by boska on 31/01/2017.
//  Copyright © 2017 boska. All rights reserved.
//

import Foundation

class ListNode: CustomDebugStringConvertible {
  
  var val: Int = 0
  var next: ListNode? = nil
  
  init(_ value: Int = 0, _ next: ListNode? = nil) {
    self.val = value
    self.next = next
  }
  
  var debugDescription: String {
    var s = "\(val)"
    var p = self
    while p.next != nil {
      p = p.next!
      s = "\(s) \(p.val)"
    }
    return s
  }
  
}
