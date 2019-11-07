//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Kua, Hayden (NA) on 07/11/2019.
//  Copyright © 2019 Kua, Hayden (NA). All rights reserved.
//

import Foundation

class Sorting {
    func bubbleSort(data: [Int]) -> [Int] {
        var list = data
        var swap = true
        while swap == true {
            swap = false
            for i in 0...list.count - 2 {
                if list[i] > list[i+1] {
                    let holder = list[i+1]
                    list[i+1] = list[i]
                    list[i] = holder
                    swap = true
                }
            }
        }
        return list
    }
    
    func merge(leftArray: [Int], rightArray: [Int]) -> [Int] {
        var listOne = leftArray
        let listTwo = rightArray
        listOne.append(contentsOf: listTwo)
        return listOne
    }
    
    func mergeSort(data: [Int]) -> [Int] {
        var list = data
        var list2 = [Int]()
        var midpoint = list.count/2
        for i in 0...midpoint {
            list2.append(list[i])
        }
    }
}


