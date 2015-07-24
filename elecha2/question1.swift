//
//  question1.swift
//  elecha2
//
//  Created by Ozan Asan on 7/20/15.
//  Copyright (c) 2015 Ozan Asan. All rights reserved.
//

import Foundation

//equal extension in question 1
func partition(inout numbers : [Int], index : Int) -> Int {
    var pivotIndex = 0
    var equalCount = 0
    swap(&numbers[index], &numbers[pivotIndex])
    for searchIndex in pivotIndex...(numbers.count - 1) {
        if(searchIndex == pivotIndex){
            continue
        }
        if(numbers[searchIndex] < numbers[pivotIndex]){
            swap(&numbers[searchIndex], &numbers[pivotIndex])
            swap(&numbers[searchIndex], &numbers[pivotIndex + 1 + equalCount])
            pivotIndex++
        }
        else if(numbers[searchIndex] == numbers[pivotIndex]){
            swap(&numbers[searchIndex], &numbers[pivotIndex + 1 + equalCount])
            equalCount++
        }
    }
    return pivotIndex
}
