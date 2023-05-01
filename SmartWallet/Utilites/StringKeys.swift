//
//  StringKeys.swift
//  SmartWallet
//
//  Created by Umair Irfan on 03/04/2023.
//

import Foundation

public enum StringKeyFormat {
    case uppercased
    case lowercased
    case captializeFirstLetter
    case captializeEachWord
    case capitialized
}

protocol StringKeys {
    
    typealias Format = StringKeyFormat
    
    var rawValue : String { get }
    
    func get(suffix: String?) -> String
    func get(with params: String...) -> String
    func get(plural: StringKeys, number: Int) -> String
    
}

extension StringKeys {
    
    func get(suffix: String? = nil) -> String {
        return (self.rawValue + (suffix ?? "")).localize()
    }
    
    func get(with params: String...) -> String {
        var finalString: String = self.get()
        var index = 1
        for string in params {
            finalString = finalString.replace(string: "%\(index)", with: string)
            index = index + 1
        }
        return finalString
    }
    
    func get(plural: StringKeys, number: Int) -> String {
        guard number == 1 else {
            return plural.get(with: number.toString())
        }
        return get(with: number.toString())
    }
    
}

