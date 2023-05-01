//
//  OnboardingViewModel.swift
//  SmartWallet
//
//  Created by Umair Irfan on 01/05/2023.
//

import SwiftUI

class OnboardingViewModel: ObservableObject {
    
    @State var email: String = ""
    @State var shouldEnable: Bool = false
    
    func getStartedButton() -> AppButtonType {
        if email.isEmpty {
            return .disabled
        } else {
            return .primary
        }
    }
}
