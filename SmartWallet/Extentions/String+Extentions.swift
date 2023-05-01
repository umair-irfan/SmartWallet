//
//  String+Extentions.swift
//  SmartWallet
//
//  Created by Umair Irfan on 03/04/2023.
//

import Foundation

extension String {
    
    func localize() -> String {
        return NSLocalizedString(self, comment: "")
    }
    
    func replace(string: String, with: String) -> String {
        return self.replacingOccurrences(of: string, with: with)
    }
    
    func format(_ type: StringKeys.Format) -> String {
        switch type {
        case .lowercased:
            return self.lowercased()
        case .uppercased:
            return self.uppercased()
        case .capitialized:
            return self.capitalized
        case .captializeFirstLetter:
            return self.lowercased()
        case .captializeEachWord:
            return self.captializeEachWord()
        }
    }
    
    func capitalizeFirstLetter() -> Self {
        return self.lowercased().prefix(1).uppercased() + self.lowercased().dropFirst()
    }
    
    func captializeEachWord() -> Self {
        return self.localizedCapitalized
    }
}

