//
//  MinLengthRule.swift
//  ChainValid
//
//  Created by torobi on 2025/07/31.
//

import Foundation

extension StringRule {
    final class MinLengthRule: StringRule {
        private let length: Int

        init(length: Int) {
            self.length = length
        }

        // MARK: - validate
        override func validate(target: Target) -> Bool {
            target.count >= length
        }
    }
}

// MARK: - CV Extension
extension ChainValidString {
    func minLength(_ length: Int) -> ChainValidString {
        append(rule: StringRule.MinLengthRule(length: length))
    }
}

