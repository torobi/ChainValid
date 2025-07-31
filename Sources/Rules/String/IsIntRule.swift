//
//  IsIntRule.swift
//  ChainValid
//
//  Created by torobi on 2025/07/31.
//

import Foundation

extension StringRule {
    final class IsIntRule: StringRule {
        // MARK: - validate
        override func validate(target: String) -> Bool {
            Int(target) != nil
        }
    }
}

// MARK: - CV Extension
extension ChainValidString {
    func isInt() -> ChainValidString {
        append(rule: StringRule.IsIntRule())
    }
}
