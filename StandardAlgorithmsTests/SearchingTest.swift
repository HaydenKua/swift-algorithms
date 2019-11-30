//
//  SearchingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Hayden Kua on 15/11/2019.
//  Copyright © 2019 Kua, Hayden (NA). All rights reserved.
//

import XCTest

class SearchingTest: XCTestCase {
    
    func testLinearSearchWithOneIntegerThatHasToBeFound() {
        //arrange
        let searching = Searching()
        let testCases = [(inputOne: [1,2,3,4,5], inputTwo: 1, expected: true),(inputOne:[6,7,10,12], inputTwo: 100, expected: false)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = searching.linearSearch (list: testCase.inputOne, value: testCase.inputTwo)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testBinarySearchWithOneIntegerThatHasToBeFound() {
        //arrange
        let searching = Searching()
        let testCases = [(inputOne: [1,2,3,4,5,6,7,8], inputTwo: 3, expected:true),(inputOne:[10,20,32,46,76,93,102], inputTwo:30, expected:false)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = searching.binarySearch (list: testCase.inputOne, value: testCase.inputTwo)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
}
