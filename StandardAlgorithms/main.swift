//
//  main.swift
//  StandardAlgorithms
//
//  Created by Kua, Hayden (NA) on 05/11/2019.
//  Copyright © 2019 Kua, Hayden (NA). All rights reserved.
//

import Foundation

func searches() {
    let search = Searching()
    let linearSearch = """
Linear Search: \
Works by comparing the number to be found to every item in the array, sequentially. \
Time Complexity : Best, O(1), Worst O(n)
"""
    print (linearSearch)
    print ("e.g. I want to find 5 in a list of 2,4,3,1,6")
    let actual = search.linearSearch(list: [2,4,3,1,6], value: 5)
    print (actual)
    
    
    let binarySearch = """
Binary Search: \
Works by comparing the number to be found to the midpoint of the array, then repeating if smaller or greater \
Preconditions: The list needs to be in order! \
Time Complexity : Best O(1), Average O(logn), Worst O(n)
"""
    print (binarySearch)
    print ("e.g. I want to find 10 in a list of 10,20,30,40")
    let actualTwo = search.binarySearch(list: [10,20,30,40], value: 10)
    print (actualTwo)

        
        
}


func sorts() {
    let sort = Sorting()
    let bubbleSort = """
Bubble Sort: \
Works by comparing numbers next to each other, and swapping if needed. Makes multiple passes until a swap isn't made. \
Time Complexity: Best O(n), Average O(n^2), Worst O(n^2) \
Space Complexity: O(1)
"""
    print (bubbleSort)
    print ("e.g. Sort 6,2,5,3,4")
    let bubble = sort.bubbleSort(data: [6,2,5,3,4])
    print (bubble)
    
    let mergeSort = """
Merge Sort: \
Works by breaking the list down into individual arrays, then slowly 'merging' them together, ordering them as you go. \
Time Complexity: Best O(nlogn), Average O(nlogn), Worst O(nlogn)
Space Complexity: O(n)
"""
    print (mergeSort)
    print ("e.g. Sort 8,6,7,5,9,2,3")
    let merge = sort.mergeSort(data: [8,6,7,5,9,2,3])
    print (merge)
    
    let insertionSort = """
Insertion Sort: \
Works by taking an item, and inserting in the list, where it belongs \
Time Complexity: Best O(n), Average O(n^2), Worst O(n^2)
Space Complexity: O(1)
"""
    print (insertionSort)
    print ("e.g. Sort 4,2,3,1,6,5")
    let insertion = sort.insertionSort(data: [4,2,3,1,6,5])
    print (insertion)
    
    let quickSort = """
Quick Sort: \
Works by taking a pivot, and arranging numbers on either side depending on its value compared to the pivot. This repeats until the list is sorted \
Time Complexity: Best O(nlogn), Average O(nlogn), Worst O(nlogn)
Space Complexity: O(logn)
"""
    print(quickSort)
    print ("e.g. Sort 15,12,17,16,13")
    let quick = sort.quickSort(data: [15,12,17,16,13])
    print (quick)
}

sorts()
