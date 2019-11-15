//
//  UnknownTest.swift
//  StandardAlgorithmsTests
//
//  Created by Kua, Hayden (NA) on 14/11/2019.
//  Copyright © 2019 Kua, Hayden (NA). All rights reserved.
//

import XCTest

class UnknownTest: XCTestCase {
    
    func testForSumOfFirstAndLastItemsInAIntegerArray () {
        //arrange
        let unknown = Unknown()
        let testCases = [(input: [1,4,6,3], expected: 4), (input: [5,2,7,5,3,10], expected: 15), (input: [6], expected: 12), (input: [], expected: 0)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.sumFirstLast(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)

        }
    }
    
    func testForModeOfSortedIntegerArray () {
        //arrange
        let unknown = Unknown()
        let testCases = [(input: [1,1,1,3,5], expected: 1),(input: [54,54,76,98], expected: 54)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.modeIntArray(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testForSecondSmallestValueInIntegerArray () {
        //arrange
        let unknown = Unknown()
        let testCases = [(input: [3,8,6,7,5,4,9,2,1], expected: 2),(input: [43,54,42,2,30,2], expected: 30),(input: [1], expected: 0)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.secondSmallestNumber(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
}

