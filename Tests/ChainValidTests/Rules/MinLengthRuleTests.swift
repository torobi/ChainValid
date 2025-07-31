//
//  MinLengthRuleTests.swift
//  ChainValid
//
//  Created by torobi on 2025/07/31.
//

import Testing
@testable import ChainValid

struct MinLengthRuleTests {
    @Test(arguments: zip(["test", "abc", "", "12345", "あいう"], [4, 3, 0, 5, 3]))
    func valid(target: String, inputLength: Int) throws {
        #expect(target.cv.minLength(inputLength).validate() == true)
    }

    @Test(arguments: zip(["test", "abc", "", "12345", "あいう"], [5, 4, 10, 6, 4]))
    func
    invalidLessThanArgment(target: String, inputLength: Int) throws {
        #expect(target.cv.minLength(inputLength).validate() == false)
    }

    @Test(arguments: zip(["test", "abc", "", "12345", "あいう"], [1, 2, -1, 3, 0]))
    func
    validMoreThanArgment(target: String, inputLength: Int) throws {
        #expect(target.cv.minLength(inputLength).validate() == true)
    }
}
