//
//  UIConfigurations.swift
//  SmartWallet
//
//  Created by Umair Irfan on 04/04/2023.
//

import Foundation
import SwiftUI

struct UIConfigurations {
    static let cornerRadius: CGFloat = 4.0
    static let buttonHeight: CGFloat = 50.0
    static let textFieldHeight: CGFloat = 50.0
}

struct AppTextFieldConfig {
    
   
   
    static let defaultTextColor : Color = AppColors.primaryText.color
    static let darkModeTextColor : Color = AppColors.primaryText.color
    
    static let defaultTitleColor : Color = AppColors.primaryText.color
    static let darkModeTitleColor : Color = AppColors.primaryText.color
    
    static let defaultPlaceHolderTextColor : Color = AppColors.secondary.color
    static let darkModePlaceHolderTextColor : Color = AppColors.secondary.color
    
    static let defaultDisableColor : Color = .gray.opacity(0.5)
    static let darkModeDisableColor : Color = .gray.opacity(0.3)
    
    static let defaultBackgroundColor : Color = AppColors.white.color
    static let darkModeBackgroundColor : Color = AppColors.white.color
    
    static let defaultErrorTextColor : Color = AppColors.error.color
    static let darkModeErrorTextColor : Color = AppColors.error.color
    
    static let defaultBorderColor : Color = AppColors.white.color
    static let darkModeBorderColor : Color = .white.opacity(0.7)
    
    static let defaultTrailingImageForegroundColor : Color = AppColors.tint.color
    static let darkModeTrailingImageForegroundColor : Color = AppColors.tint.color
    
    static let focusedBorderColorEnable: Bool = false
    static let defaultFocusedBorderColor : Color = AppColors.tint.color
    static let darkModeFocusedBorderColor : Color = AppColors.white.color
    
    static let titleFont = AppFonts.light.font(with: .h4)
    static let textFieldFont = AppFonts.light.font(with: .h4)
    static let errorFont : Font = AppFonts.light.font(with: .p1)
    static let placeholderFont = AppFonts.light.font(with: .p1)
    
    static let borderWidth : CGFloat = 1.0
    static let cornerRadius : CGFloat = 4.0
    static let borderType: BorderType = .square
    static let autoCorrection: Bool = false
}

public enum BorderType {
    case square
    case line
}


