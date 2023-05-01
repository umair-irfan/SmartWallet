//
//  StringKeys+Extentions.swift
//  SmartWallet
//
//  Created by Umair Irfan on 03/04/2023.
//

import Foundation

extension StringKeys {
    typealias Generic = GenericStrings
}

enum GenericStrings: String, StringKeys {
    case AppName = "app_name"
    case OnboardingCaption = "onboarding_caption"
    case EmailPlaceholder = "placeholder_email"
    case GetStarted = "get_started_text"
    case Login = "login_text"
    case Explore = "explore_text"
}
