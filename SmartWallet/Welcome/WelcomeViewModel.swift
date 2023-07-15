//
//  WelcomeViewModel.swift
//  SmartWallet
//
//  Created by Umair Irfan on 01/05/2023.
//

import SwiftUI
import Combine

protocol WelcomeViewModelInput {
    var email: CurrentValueSubject<String, Never> { get }
}

protocol WelcomeViewModelOutput {
    var shouldEnable: Bool { get }
    var startButtonType: CurrentValueSubject<AppButtonType, Never> { get }
}

protocol WelcomeViewModelType: ObservableObject {
    init()
    var input: WelcomeViewModelInput { get }
    var output: WelcomeViewModelOutput { get }
}

class WelcomeViewModel: WelcomeViewModelInput, WelcomeViewModelOutput, WelcomeViewModelType {
    
    var email = CurrentValueSubject<String, Never>("")
    var startButtonType = CurrentValueSubject<AppButtonType, Never>(.defualt)
    @State var shouldEnable: Bool = false
    
    var input: WelcomeViewModelInput { self }
    var output: WelcomeViewModelOutput { self }
    
    required init() {
        _ = email.sink( receiveValue: { [unowned self] in
            $0.isEmpty ? self.startButtonType.send(.disabled) : self.startButtonType.send(.primary)
        })
    }
}
