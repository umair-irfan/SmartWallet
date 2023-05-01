//
//  SignupView.swift
//  SmartWallet
//
//  Created by Umair Irfan on 04/04/2023.
//

import SwiftUI

struct SignupView: View {
    @State var text: String = ""
    var body: some View {
        ZStack {
            AppBackgroundView()
            VStack {
                //AppButton(type: .secondary, title: "Hello")
            }
        }.keyboardManager()
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
