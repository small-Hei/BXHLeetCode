//
//  OCSortTwoTheList.m
//  BXHLeetCode
//
//  Created by yit on 2020/9/3.
//  Copyright © 2020 baishuang. All rights reserved.
//

#import "OCSortTwoTheList.h"
#import "BXHLeetCode-Swift.h"

@implementation OCSortTwoTheList
+ (ListNode *)mergeTwoListsList1:(ListNode *)t1 List2:(ListNode *)t2 {
    ListNode *temptNode1 = t1;
    ListNode *temptNode2 = t2;
    ListNode *head;
    if (t1 == nil) {
        return t2;
    }
    if (t2 == nil) {
        return t1;
    }
    if (temptNode1.val < temptNode2.val) {
        head = temptNode1;
        temptNode1 = temptNode1.next;
    }else {
        head = temptNode2;
        temptNode2 = temptNode2.next;
    }
    ListNode *cur = head;
    while (temptNode1 != nil && temptNode2 != nil) {
        if (temptNode1.val < temptNode2.val) {
            cur.next = temptNode1;
            cur = cur.next;
            temptNode1 = temptNode1.next;
        }else {
            cur.next = temptNode2;
            cur = cur.next;
            temptNode2 = temptNode2.next;
        }
    }
    cur.next = temptNode1 != nil ? temptNode1 : temptNode2;
    return  head;
    /*
    先创建一个头 递归 省略
     */
}
@end
