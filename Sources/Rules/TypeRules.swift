//
//  TypeRules.swift
//  ChainValid
//
//  Created by torobi on 2025/07/31.
//

import Foundation

class StringRule: Rule {
    func validate(target: Target) -> Bool { fatalError("This method should be overridden") }
    typealias Target = String
}
