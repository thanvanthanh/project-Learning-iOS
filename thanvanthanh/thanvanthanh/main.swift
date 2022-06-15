//
//  main.swift
//  thanvanthanh
//
//  Created by Thanh on 3/10/21.
//

import Foundation

print("Thân Văn Thanh")
print("Bai Tap 9/3/2021")

var myNumber : [Int] = [ 5 , 6 , -7 , 9 , 12 , 22 , -12 , 4 , -7 ]
var max = myNumber.max()
var min = myNumber.min()
for i in 0..<myNumber.count{
    if myNumber[i] < 0 {
        myNumber[i] = 0 }
    print(myNumber[i])
}
print("max là = \(String(describing:  max))")
print("min là = \(String(describing: min))")


