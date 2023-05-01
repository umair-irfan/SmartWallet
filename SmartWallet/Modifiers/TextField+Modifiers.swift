//
//  TextField+Modifiers.swift
//  SmartWallet
//
//  Created by Umair Irfan on 04/04/2023.
//

import SwiftUI


struct TextFieldClearButton: ViewModifier {
    @Binding var fieldText: String

    func body(content: Content) -> some View {
        content
            .overlay {
                if !fieldText.isEmpty {
                    HStack {
                        Spacer()
                        Button {
                            fieldText = ""
                        } label: {
                            Image(systemName: "multiply.circle.fill")
                        }
                        .foregroundColor(AppColors.tint.color)
                        .padding(.trailing, 15)
                        .frame(width: 25, height: 25)
                    }
                }
            }
    }
}
