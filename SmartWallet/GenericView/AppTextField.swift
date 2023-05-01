//
//  AppTextField.swift
//  SmartWallet
//
//  Created by Umair Irfan on 04/04/2023.
//

import SwiftUI


public struct AppTextField: View {
    
    
    private let placeHolder: String
    @Binding var text: String
    @State private var editingMode = false
    public init(placeHolder: String, text: Binding<String>) {
        self._text = text
        self.placeHolder = placeHolder
    }
    
    var floatPlaceHodler: Bool {
        editingMode || (text.count != 0)
    }
    
    public var body: some View {
        ZStack {
            TextField("", text: $text, onEditingChanged: { (edit) in
                editingMode = edit
            })
            .placeholder(when: text.isEmpty) {
                Text(placeHolder)
                    .foregroundColor(AppColors.tint.color)
                    .font(AppFonts.light.font(with: .p1))
                    .scaleEffect(floatPlaceHodler ? 1.0 : 0.85, anchor: .leading)
            }
            .animation(.linear, value: 1)
            .keyboardType(.emailAddress)
            .clearButton($text)
            .padding(.leading, 20)
            .frame(height: UIConfigurations.textFieldHeight)
            .foregroundColor(AppColors.primaryText.color)
            .tint(AppColors.tint.color)
            .font(AppFonts.light.font(with: .h4))
            
        }
        .background(AppColors.white.color)
        .cornerRadius(UIConfigurations.cornerRadius)
        .padding([.leading, .trailing], 15)
    }
}
