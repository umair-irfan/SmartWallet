//
//  WelcomeView.swift
//  SmartWallet
//
//  Created by Umair Irfan on 30/03/2023.
//

import SwiftUI

struct WelcomeView<ViewModel>: View where ViewModel: WelcomeViewModelType  {
    
    @StateObject var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
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
                        AppTextField(placeHolder: StringKeys.Generic.EmailPlaceholder.get(), text: .constant(viewModel.input.email.value))
                        AppButton(type: viewModel.output.startButtonType.value) {
                           
                        } content: {
                            Text(StringKeys.Generic.GetStarted.get().format(.uppercased))
                        }.padding()
                        
                    }
                    HStack {
                        AppButton(type: .defualt) {
                           
                        } content: {
                            Text(StringKeys.Generic.Login.get().format(.uppercased))
                        }
                        .padding([.leading, .trailing], 10)
                        .padding([.top], 25)
                        
                        Divider()
                            .background(AppColors.primary.color)
                            .frame(height: 30)
                            .padding([.top, .leading, .trailing], 25)
                        
                        AppButton(type: .defualt) {
                           
                        } content: {
                            Text(StringKeys.Generic.Explore.get().format(.uppercased))
                        }
                        .padding([.leading, .trailing], 10)
                        .padding([.top], 25)
                    }
                }
            }.keyboardManager()
        }
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(viewModel: WelcomeViewModel())
    }
}
