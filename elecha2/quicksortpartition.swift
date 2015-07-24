//
//  quicksortpartition.swift
//  elecha2
//
//  Created by Ozan Asan on 7/21/15.
//  Copyright (c) 2015 Ozan Asan. All rights reserved.
//

import Foundation

//practicing new way of partititon for equal extension
func quicksortpart(inout numbers : [Int], index : Int) -> Int {
    var pivotIndex = 0
    swap(&numbers[index], &numbers[pivotIndex])
    for searchIndex in pivotIndex...(numbers.count - 1) {
        if(numbers[searchIndex] < numbers[pivotIndex]){
            swap(&numbers[searchIndex], &numbers[pivotIndex])
            pivotIndex++
            swap(&numbers[searchIndex], &numbers[pivotIndex])
        }
    }
    return pivotIndex
}