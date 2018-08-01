//: Playground - noun: a place where people can play

import UIKit
var mang = [1000000001 ,1000000002, 1000000003, 1000000004, 1000000005]
func simpleArraySum(ar: [Int64]) -> Int64 {
    var sum:Int64 = 0
    for i in 0..<ar.count {
        sum = ar[i] + sum
    }
    return sum
}
simpleArraySum(ar: )
