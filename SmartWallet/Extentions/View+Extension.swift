//
//  View+Extension.swift
//  SmartWallet
//
//  Created by Umair Irfan on 02/04/2023.
//

import SwiftUI

extension View {
    
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
    
    func clearButton(_ text: Binding<String>) -> some View {
           self.modifier(TextFieldClearButton(fieldText: text))
    }
}
