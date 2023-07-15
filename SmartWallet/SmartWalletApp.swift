//
//  SmartWalletApp.swift
//  SmartWallet
//
//  Created by Umair Irfan on 11/03/2023.
//

import SwiftUI

@main
struct SmartWalletApp: App {
    var body: some Scene {
        WindowGroup {
            WelcomeView(viewModel: WelcomeViewModel())
        }
    }
}
