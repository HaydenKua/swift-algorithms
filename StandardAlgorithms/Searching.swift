//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Hayden Kua on 15/11/2019.
//  Copyright © 2019 Kua, Hayden (NA). All rights reserved.
//

import Foundation

class Searching {
    
    func linearSearch(list: [Int], value: Int) -> Bool {
        var found = false
        for i in 0 ... list.count - 1 {
            if list[i] == value {
                found = true
            }
        }
        return found
    }
    
    func binarySearch(list: [Int], value: Int) -> Bool {
        var array = list
        var first = 0
        var last = array.count-1
        var found = false
        while first <= last && found == false {
            var midpoint = (first + last)/2
            if array[midpoint] == value {
                found = true
                return found
            } else if value < array[midpoint] {
                last = midpoint-1
            } else {
                first = midpoint+1
            }
        }
        return found
            
        }
        
    }
    
    

