//
//  WholeMatchRuleTests.swift
//  ChainValid
//
//  Created by torobi on 2025/08/01.
//

import Testing
@testable import ChainValid

struct WholeMatchRuleTests {
    @Test(arguments: zip(["0", "-1", "100", "abab"], [/0/, /-\d+/, /\d+/, /^abab$/]))
    func valid(target: String, regex: Regex<Substring>) throws {
        #expect(target.cv.wholeMatch(of: regex).validate() == true)
    }

    @Test(arguments: zip(["", "1.1", "a1b2"], [/a/, /あいうえお/, /a/]))
    func
    invalid(target: String, regex: Regex<Substring>) throws {
        #expect(target.cv.wholeMatch(of: regex).validate() == false)
    }
}

