//
//  question2.swift
//  elecha2
//
//  Created by Ozan Asan on 7/21/15.
//  Copyright (c) 2015 Ozan Asan. All rights reserved.
//

import Foundation

//increases a number
func increaseBigNumber(inout bigNumber : [Int]){
    if((bigNumber.last != nil && bigNumber.last != 9) ){
        bigNumber[bigNumber.count - 1] = bigNumber.last! + 1
    }
    else {
        var theIndex = bigNumber.count - 1
        while(bigNumber[theIndex] == 9){
            theIndex--
            if(theIndex < 0){
                break
            }
        }
        if(theIndex >= 0){
            for zeroIndex in (theIndex + 1)...(bigNumber.count - 1){
                bigNumber[zeroIndex] = 0
            }
            bigNumber[theIndex] = bigNumber[theIndex] + 1
        }
        else {
            bigNumber = [Int](count: bigNumber.count, repeatedValue: 0)
            bigNumber.insert(1, atIndex: 0)
            
        }
    }
}