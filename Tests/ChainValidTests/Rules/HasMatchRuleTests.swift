//
//  HasMatchRuleTests.swift
//  ChainValid
//
//  Created by torobi on 2025/08/01.
//

import Testing
@testable import ChainValid

struct HasMatchRuleTests {
    @Test(arguments: zip(["0", "-1", "100", "abab"], [/0/, /1/, /\d+/, /a/]))
    func valid(target: String, regex: Regex<Substring>) throws {
        #expect(target.cv.hasMatch(of: regex).validate() == true)
    }

    @Test(arguments: zip(["", "1.1"], [/a/, /あいうえお/]))
    func
    invalid(target: String, regex: Regex<Substring>) throws {
        #expect(target.cv.hasMatch(of: regex).validate() == false)
    }
}
