//
//  question5.swift
//  elecha2
//
//  Created by Ozan Asan on 7/23/15.
//  Copyright (c) 2015 Ozan Asan. All rights reserved.
//

import Foundation

func deleteKey(value : Int, inout from : [Int]) -> Int {
    var endPointer = from.count - 1
    var foundCount = 0
    var index = 0
    while(index < from.count - foundCount){
        if(from[index] == value){
            swap(&from[index], &from[endPointer])
            from[endPointer] = 0
            foundCount++; endPointer--
        }
        else {
            index++
        }
    }
    return (from.count - foundCount)
}