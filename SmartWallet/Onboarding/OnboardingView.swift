//
//  OnboardingView.swift
//  SmartWallet
//
//  Created by Umair Irfan on 30/03/2023.
//

import SwiftUI

struct OnboardingView: View {
    
    
    @State var viewModel: OnboardingViewModel!
    
    @State private var username: String = ""
    @State var isValidEmail: Bool = true
    @State var isValidPhone: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView(safeAreaInset: true)
                VStack {
                    Spacer()
                    Image("welcome_logo").padding(.top)
                    Text(StringKeys.Generic.AppName.get().format(.uppercased))
                        .font(AppFonts.medium.font(with: .h1))
                        .foregroundColor(AppColors.primaryText.color)
                        .frame(alignment: .center)
                        .padding(.top, -10)
                    Text(StringKeys.Generic.OnboardingCaption.get())
                        .multilineTextAlignment(.center)
                        .font(AppFonts.light.font(with: .h4))
                        .foregroundColor(AppColors.secondaryText.color)
                        .padding([.leading, .trailing], 30)
                    
                    Spacer()
                    VStack(spacing: 5) {
                        AppTextField(placeHolder: StringKeys.Generic.EmailPlaceholder.get(), text: $username)
                        AppButton(type: .primary, state: $isValidPhone) {
                           
                        } content: {
                            Text(StringKeys.Generic.GetStarted.get().format(.uppercased))
                        }.padding()
                        
                    }
                    HStack {
                        Button(StringKeys.Generic.Login.get().format(.uppercased)) {
                            
                            isValidPhone = true
                        }
                        .padding([.leading, .trailing], 10)
                        .padding([.top], 25)
                        .background(AppColors.background.color)
                        .foregroundColor(AppColors.primary.color)
                        .font(AppFonts.regular.font(with: .h2))
                        .cornerRadius(UIConfigurations.cornerRadius)
                        Divider()
                            .background(AppColors.primary.color)
                            .frame(height: 30)
                            .padding([.top, .leading, .trailing], 25)
                           
                        Button(StringKeys.Generic.Explore.get().format(.uppercased)) {
                            
                        }
                        .padding([.leading, .trailing], 10)
                        .padding([.top], 25)
                        .background(AppColors.background.color)
                        .foregroundColor(AppColors.primary.color)
                        .font(AppFonts.light.font(with: .h2))
                        .cornerRadius(UIConfigurations.cornerRadius)
                    }
                }
            }.keyboardManager()
        }
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
