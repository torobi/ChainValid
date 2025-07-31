//
//  IsLengthRule.swift
//  ChainValid
//
//  Created by torobi on 2025/07/31.
//

import Foundation

extension StringRule {
    final class IsLengthRule: StringRule {
        private let length: Int

        init(length: Int) {
            self.length = length
        }

        // MARK: - validate
        override func validate(target: Target) -> Bool {
            target.count == length
        }
    }
}

// MARK: - CV Extension
extension ChainValidString {
    func isLength(_ length: Int) -> ChainValidString {
        append(rule: StringRule.IsLengthRule(length: length))
    }
}
