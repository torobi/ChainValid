//
//  HasMatchRule.swift
//  ChainValid
//
//  Created by torobi on 2025/08/01.
//

import Foundation

extension StringRule {
    final class HasMatchRule: StringRule {
        private let regex: Regex<Substring>

        init(regex: Regex<Substring>) {
            self.regex = regex
        }

        // MARK: - validate
        override func validate(target: String) -> Bool {
            target.firstMatch(of: regex) != nil
        }
    }
}

// MARK: - CV Extension
extension ChainValidString {
    func hasMatch(of regex: Regex<Substring>) -> ChainValidString {
        append(rule: StringRule.HasMatchRule(regex: regex))
    }
}

