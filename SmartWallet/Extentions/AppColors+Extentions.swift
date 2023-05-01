//
//  AppColors+Extentions.swift
//  SmartWallet
//
//  Created by Umair Irfan on 03/04/2023.
//
import SwiftUI

extension AppColors {
    var color: Color {
        switch self {
        case .primary:
            return Color(AppColors.primary.rawValue)
        case .secondary:
            return Color(AppColors.secondary.rawValue)
        case .background:
            return Color(AppColors.background.rawValue)
        case .primaryText:
            return Color(AppColors.primaryText.rawValue)
        case .secondaryText:
            return Color(AppColors.secondaryText.rawValue)
        case .border:
            return Color(AppColors.border.rawValue)
        case .tint:
            return Color(AppColors.tint.rawValue)
        case .white:
            return Color(AppColors.white.rawValue)
        case .sucess:
            return Color(AppColors.sucess.rawValue)
        case .warning:
            return Color(AppColors.warning.rawValue)
        case .error:
            return Color(AppColors.error.rawValue)
        }
    }
}
