//
//  SortTwoTheList.swift
//  BXHLeetCode
//
//  Created by yit on 2020/9/3.
//  Copyright © 2020 baishuang. All rights reserved.
//

import UIKit
import Foundation
//已知参数
@objcMembers class ListNode: NSObject {
    var val: Int = 0
    var next: ListNode?
    init(_ temptVar: Int) {
        self.val = temptVar
        self.next = nil
    }
}

class SortTwoTheList {
   class func mergeTwoLists(_ tl1: ListNode?, _ tl2: ListNode? ) -> ListNode? {
    if(tl1 == nil) {return tl2}
    if(tl2 == nil) {return tl1}
    
    /*
        var l1 = tl1, l2 = tl2
        var head: ListNode?
        //方式一
        if (l1?.val ?? 0 < l2?.val ?? 0) {
            head = l1
            l1 = l1?.next
        } else {
            head = l2
            l2 = l2?.next
        }
        var cur = head
        while (l1 != nil && l2 != nil) {
            if (l1?.val ?? 0 < l2?.val ?? 0) {
                //设置完后移
                cur?.next = l1
                cur = cur?.next
                l1 = l1?.next
            } else {
                cur?.next = l2
                cur = cur?.next
                l2 = l2?.next
                
            }
        }
        cur?.next = l1 != nil ? l1 : l2
        return head
 */
    
    /*
    //方式二 先创建一个头
    var l1 = tl1, l2 = tl2
    let head: ListNode = ListNode(0)
    var cur: ListNode? = head
    while (l1 != nil && l2 != nil) {
        if (l1?.val ?? 0 < l2?.val ?? 0) {
            //设置完后移
            cur?.next = l1
            cur = cur?.next
            l1 = l1?.next
        } else {
            cur?.next = l2
            cur = cur?.next
            l2 = l2?.next
            
        }
    }
    cur?.next = l1 != nil ? l1 : l2
    return head.next
    }
    */
    //方式三 递归实现
        var head: ListNode?
        if (tl1?.val ?? 0 > tl2?.val ?? 0) {
            head = tl2
            head?.next = mergeTwoLists(tl1, tl2?.next)
        } else {
            head = tl1
            head?.next = mergeTwoLists(tl2, tl1?.next)
        }
        return head
    }
}


