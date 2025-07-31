//
//  File.swift
//  ChainValid
//
//  Created by torobi on 2025/07/31.
//

import Foundation

struct ChainValidString: Validatable {
    let target: String
    var rules: [ValidateRule] = []

    typealias Target = String
    typealias ValidateRule = StringRule
}

// MARK: - CV Extension
extension String {
    var cv: ChainValidString {
        .init(target: self)
    }
}
