//
//  Rule.swift
//  ChainValid
//
//  Created by torobi on 2025/07/31.
//

protocol Rule {
    associatedtype Target
    func validate(target: Target) -> Bool
}
