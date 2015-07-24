//
//  question6.swift
//  elecha2
//
//  Created by Ozan Asan on 7/23/15.
//  Copyright (c) 2015 Ozan Asan. All rights reserved.
//

import Foundation

func deleteDuplicates(from: [Int]) -> [Int]{
    var uniqueArray : Array<Int> = []
    if let firstValue : Int = from.first {
        uniqueArray.append(firstValue)
    }
    for var index = 1; index < from.count; index++ {
        if(from[index] != from[index - 1]){
            uniqueArray.append(from[index])
        }
    }
    return uniqueArray
}