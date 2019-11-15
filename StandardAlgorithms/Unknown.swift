//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Kua, Hayden (NA) on 14/11/2019.
//  Copyright © 2019 Kua, Hayden (NA). All rights reserved.
//

import Foundation

class Unknown {
    
    func sumFirstLast(data: [Int]) -> Int {
        if data.count > 1 {
            let sum = data[0] + data[(data.count-1)]
            return sum
        } else if data.count == 1 {
            return (data[0] * 2)
        } else {
            let sum = 0
            return sum
        }
    }
    
    func modeIntArray(data: [Int]) -> Int {
        let array = data
        var iter = 0
        var number = 0
        var list = [Int]()
        for _ in 0..<array.count {
            for i in 0..<array.count {
                if array[i] == array[iter] {
                    list.append(array[i])
                }
            }
            iter += 1
            if number < list.count{
                number = list.count
            }
            
        }
        return list[0]
        }
    
    func secondSmallestNumber(data: [Int]) -> Int {
        let array = data
        var smallest = 0
        var number = 0
        for j in 0..<array.count {
            for i in 0..<array.count {
                smallest = array[i]
            }
            if smallest > array[j] {
                smallest = array[j]
            }
            return array[j]
        
        }
        
    }
    
    
    
    
    }


    

