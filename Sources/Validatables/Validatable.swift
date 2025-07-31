//
//  Validatable.swift
//  ChainValid
//
//  Created by torobi on 2025/07/31.
//

import Foundation

protocol Validatable {
    associatedtype Target
    associatedtype ValidateRule: Rule
    var target: Target { get }
    var rules: [ValidateRule] { get set }

    func validate() -> Bool
    func validateWithViolations() -> (Bool, [ValidateRule])
}

extension Validatable where Target == ValidateRule.Target {
    func validate() -> Bool {
        validateWithViolations().0
    }
    func validateWithViolations() -> (Bool, [ValidateRule]) {
        let violations = rules.filter { rule in
            !rule.validate(target: target)
        }
        return (violations.isEmpty, violations)
    }
    func append(rule: ValidateRule) -> Self {
        var new = self
        new.rules.append(rule)
        return new
    }
}
