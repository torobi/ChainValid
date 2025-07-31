//
//  IsIntRuleTests.swift
//  ChainValid
//
//  Created by torobi on 2025/07/31.
//

import Testing
@testable import ChainValid

struct IsIntRuleTests {
    @Test(arguments: ["0", "-1", "100", "00", "0001"])
    func valid(target: String) throws {
        #expect(target.cv.isInt().validate() == true)
    }

    @Test(arguments: ["", "1.1", "-1.1", "0x10"])
    func
    invalid(target: String) throws {
        #expect(target.cv.isInt().validate() == false)
    }
}

