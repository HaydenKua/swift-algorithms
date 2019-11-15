//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Kua, Hayden (NA) on 07/11/2019.
//  Copyright © 2019 Kua, Hayden (NA). All rights reserved.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedIntegers() {
        //arrange
        let sorting = Sorting()
        let data = [5, 4, 1, 3]
        //act
        let actual = sorting.bubbleSort(data: data)
        //assert
        XCTAssertEqual(actual, [1, 3, 4, 5])
    }
    
    func testBubbleSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        //arrrange
        let sorting = Sorting()
        let testCases = [(input: [10, 3, 2, 7, 1], expected: [1, 2, 3, 7, 10]),
                         (input: [456, 300, 3, 1, 128, 5], expected: [1, 3, 5, 128, 300, 456])]
        
        //act
        //assert
        for testCase in testCases {
            //testCase is a tuple representing the input test data and our expected output
            let actual = sorting.bubbleSort(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
        
    }
    
    func testMergeWithDifferentIntegerArraysReturnsOneIntegerArray() {
        //arrange
        let sorting = Sorting()
        let testCases = [(inputOne: [1, 3, 2], inputTwo: [4, 6, 5], expected: [1, 3, 2, 4, 6, 5]),(inputOne: [112, 33, 52], inputTwo: [10, 20], expected: [112, 33, 52, 10, 20])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.merge(leftArray: testCase.inputOne, rightArray: testCase.inputTwo)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testMergeSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [10, 3, 2, 7, 1], expected: [1, 2, 3, 7, 10]),
                         (input: [456, 300, 3, 1, 128, 5], expected: [1, 3, 5, 238, 300, 456])]
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.mergeSort(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testLinearSearchWithOneIntegerThatHasToBeFound() {
        //arrange
        let searching = Sorting()
        let testCases = [(inputOne: [1,2,3,4,5], inputTwo: 1, expected: true),(inputOne:[6,7,10,12], inputTwo: 100, expected: false)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = searching.linearSearch (list: testCase.inputOne, value: testCase.inputTwo)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
}
