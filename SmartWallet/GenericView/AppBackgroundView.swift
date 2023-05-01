//
//  AppBackgroundView.swift
//  SmartWallet
//
//  Created by Umair Irfan on 30/03/2023.
//

import SwiftUI

struct AppBackgroundView: View {
    @State var safeAreaInset: Bool = false
    var body: some View {
        safeAreaInset ?
        AppColors.background.color
            .edgesIgnoringSafeArea(.vertical) :
        AppColors.background.color
            .edgesIgnoringSafeArea(.all)
    }
}

struct AppBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        AppBackgroundView()
    }
}
