//
//  question3.swift
//  elecha2
//
//  Created by Ozan Asan on 7/21/15.
//  Copyright (c) 2015 Ozan Asan. All rights reserved.
//

import Foundation

func negativeCheck(inout number : String) -> Bool{
    if(number[number.startIndex] == "-"){
        return false
    }
    return true
}

func bigIntegerArithmetic(number1 : String, number2 : String){
    var isNegative = false
    var numberOne = number1
    var numberTwo = number2
    
    if(!negativeCheck(&numberOne)){
        isNegative = !isNegative
    }
    
    if(!negativeCheck(&numberTwo)){
        isNegative = !isNegative
    }
    
    //erase
    if(isNegative){
        println("this number is negative")
    }
    println(number1[advance(number1.startIndex, 1)])
}