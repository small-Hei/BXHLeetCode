//
//  ViewController.swift
//  BXHLeetCode
//
//  Created by yit on 2020/9/3.
//  Copyright © 2020 baishuang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let listNode1 = ListNode(1)
        let listNode3 = ListNode(2)
        let listNode5 = ListNode(4)
        
        listNode1.next = listNode3
        listNode3.next = listNode5
        
        
        let listNode2 = ListNode(1)
        let listNode4 = ListNode(3)
        let listNode6 = ListNode(4)
        
        listNode2.next = listNode4
        listNode4.next = listNode6
        
//        var finishNode = SortTwoTheList.mergeTwoLists(listNode1,listNode2);
//        while finishNode?.val != nil {
//            if let tvar = finishNode?.val {
//                print(tvar)
//            }
//            finishNode = finishNode?.next
//        }
        
        print("++++++++++======")
        var cur = OCSortTwoTheList.mergeTwoListsList1(listNode1, list2: listNode2);
        while cur.next != nil {
            print(cur.next?.val ?? 0)
            cur = cur.next ?? ListNode.init(0)
        }
        print(cur)
    
    }
}

