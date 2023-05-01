//
//  AppButton.swift
//  SmartWallet
//
//  Created by Umair Irfan on 06/04/2023.
//

import SwiftUI

enum AppButtonType {
    case primary
    case secondary
    case disabled
    case defualt
}

fileprivate struct AppButtonStyle: ButtonStyle {
    
    @State var type: AppButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        switch type {
        case .primary:
            configuration.label
                //.frame(width: 250, height: UIConfigurations.buttonHeight)
            .background(AppColors.primary.color)
            .cornerRadius(UIConfigurations.cornerRadius)
            .foregroundColor(AppColors.white.color)
            .padding([.leading, .trailing, .top], 10)
            .font(AppFonts.light.font(with: .h2))
        case .secondary:
            configuration.label
                .buttonBorderShape(.roundedRectangle(radius: 4))
            .background(AppColors.white.color)
            .cornerRadius(UIConfigurations.cornerRadius)
            .foregroundColor(AppColors.primary.color)
            .padding([.leading, .trailing, .top], 10)
            .font(AppFonts.light.font(with: .h2))
        case .disabled:
            configuration.label
//                .frame(width: 250, height: UIConfigurations.buttonHeight)
                .disabled(true)
            .background(AppColors.secondary.color)
            .cornerRadius(UIConfigurations.cornerRadius)
            .foregroundColor(AppColors.white.color)
            .padding([.leading, .trailing, .top], 10)
            .font(AppFonts.light.font(with: .h2))
        case .defualt:
            configuration.label
                .background(AppColors.background.color)
                .foregroundColor(AppColors.primary.color)
                .font(AppFonts.light.font(with: .h2))
        }
    }
}

struct AppButton<T: View>: View {
    
    let action: () -> Void
    let content: T
    @State var type: AppButtonType = .primary
    
    init(type: AppButtonType ,action: @escaping () -> Void, @ViewBuilder content: () -> T) {
        self.action = action
        self.content = content()
    }
    
    var body: some View {
        Button(action: (action)) {
            content
                .padding()
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 0,
                       maxHeight: UIConfigurations.buttonHeight)
        }
        .buttonStyle(AppButtonStyle(type: type))
    }
}
