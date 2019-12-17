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
        var listTwo = rightArray
        var sorted = [Int]()
        while listOne.count != 0 && listTwo.count != 0 {
            if listOne[0] > listTwo[0] {
                sorted.append(listTwo[0])
                listTwo.removeFirst()
            } else {
                sorted.append(listOne[0])
                listOne.removeFirst()
            }
        }
        sorted.append(contentsOf: listTwo)
        sorted.append(contentsOf: listOne)
        return sorted
    }
    
    func mergeSort(data: [Int]) -> [Int] {
        let list = data
        let midpoint = list.count/2
        if list.count <= 1 {
            return list
        } else {
            var list1 = [Int]()
            var list2 = [Int]()
            for i in midpoint ..< list.count {
                list2.append(list[i])
            }
            for i in 0 ..< midpoint {
                list1.append(list[i])
            }
            list1 = mergeSort(data: list1)
            list2 = mergeSort(data: list2)
            return merge(leftArray: list1, rightArray: list2)
        }
            
        
    }
    
    func insertionSort(data: [Int]) -> [Int] {
        var list = data
        for i in 1...(list.count-1) {
            var temp = list[i]
            var j = i-1
            while j >= 0 && list[j] > temp {
                list[j+1] = list[j]
                j -= 1
            }
            list[j+1] = temp
        }
        return list
    }

    func quickSort(data: [Int]) -> [Int] {
        if data.count <= 1 {
            return data
        } else {
            let pivot = data[0]
            var left = [Int]()
            var right = [Int]()

            for i in 1..<data.count {
                let item = data[i]
                if item < pivot {
                    left.append(item)
                } else {
                    right.append(item)
                }
            }

            var sortedData = [Int]()
            sortedData.append(contentsOf: quickSort(data: left))
            sortedData.append(pivot)
            sortedData.append(contentsOf: quickSort(data: right))
            return sortedData
            
        }
    }

}
