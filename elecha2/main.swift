//
//  main.swift
//  elecha2
//
//  Created by Ozan Asan on 7/20/15.
//  Copyright (c) 2015 Ozan Asan. All rights reserved.
//

import Foundation

//question one
println("--Question One--")
var numbers = [2,7,4,16,5,3,1,17,4,5,7,9,11,4,5,10,10,4,5,8,6,4,3,7,4,6]
println("Before call:")
println(numbers)
partition(&numbers, 10)
println("After call:")
println(numbers)

//question two
println()
println("--Question Two--")
var bigNumber = [9,9,9,9,9]
println("number before call:")
for value in bigNumber {
    print(value)
}
println()
increaseBigNumber(&bigNumber)
println("number after call:")
for value in bigNumber {
    print(value)
}
println()

//question three
println()
println("--Question Three--")
var number1 = "-45645654"
var number2 = "45645654"
bigIntegerArithmetic(number1, number2)

//question four
println()
println("--Question Four--")
var A = [0,0,0,0]
var B = [1,1,1,1,0,1]
var C = [5,1,1,1,4,1]
var D = [3,3,1,0,2,0,1]
var E = [3,2,0,0,2,0,1]

var games = [A,B,C,D,E]

for game in games {
    if(isLastReachable(game)){
        println("Last item in this game is reachable.")
    }
    else {
        println("There is no way to reach the last item.")
    }
}

//question five
println()
println("--Question Five--")
var Q = [6,8,4,3,7,3,7]
var newCount = deleteKey(3, &Q)
print("[")
for index in 0..<newCount {
    print(Q[index])
    if(index != newCount - 1){
        print(",")
    }
}
print("]")

//question six
println()
println("--Question Six--")
var H = [1,1,1,2,3,4,5,5,5,5,6,6,7,7,7,8,9,9,9,9,9]
var unique = deleteDuplicates(H)
println("Unique Array:")
print("[")
for var index = 0; index < unique.count; index++ {
    print(unique[index])
    if(index != unique.count - 1){
        print(",")
    }
}
print("]")

//question seven
println()
println("--Question Seven--")

var StockPrices = [100, 130, 110, 170, 80, 90, 80, 110, 120, 110, 70, 80]
var profit = findMaxProfit(StockPrices)
println(profit)

var StockPrices2 = [50, 60, 80, 90, 110, 150, 300]
var profit2 = findMaxProfit(StockPrices2)
println(profit2)

var StockPrices3 = [40, 30, 60, 55, 65, 45, 35, 57, 42, 35, 42, 43, 38]
var profit3 = findMaxProfit(StockPrices3)
println(profit3)

