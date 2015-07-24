//
//  question7.swift
//  elecha2
//
//  Created by Ozan Asan on 7/24/15.
//  Copyright (c) 2015 Ozan Asan. All rights reserved.
//

import Foundation

func findMaxProfit(stockPriceList : [Int]) -> Int {
    var currentLow : Int = 9999
    var currentMaxProfit = 0
    if let firstPrice = stockPriceList.first {
        currentLow = firstPrice
    }
    
    for price in stockPriceList {
        if(price < currentLow){
            currentLow = price
        }
        if((price - currentLow) > currentMaxProfit){
            currentMaxProfit = price - currentLow
        }
    }
    return currentMaxProfit
}