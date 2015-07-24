//
//  question4.swift
//  elecha2
//
//  Created by Ozan Asan on 7/23/15.
//  Copyright (c) 2015 Ozan Asan. All rights reserved.
//

import Foundation

func isLastReachable(board : [Int]) -> Bool {
    var maxReach = 0
    var index = 0
    while(index != board.count - 1){
        if(index > maxReach){
            return false
        }
        maxReach = max(maxReach, index + board[index])
        index++
    }
    return true
}