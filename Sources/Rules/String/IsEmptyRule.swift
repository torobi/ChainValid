//
//  IsEmptyRule.swift
//  ChainValid
//
//  Created by torobi on 2025/08/01.
//

import Foundation

extension StringRule {
    final class IsEmptyRule: StringRule {
        // MARK: - validate
        override func validate(target: String) -> Bool {
            target.isEmpty
        }
    }
}

// MARK: - CV Extension
extension ChainValidString {
    func isEmpty() -> ChainValidString {
        append(rule: StringRule.IsEmptyRule())
    }
}
