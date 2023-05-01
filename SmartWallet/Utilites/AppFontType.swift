//
//  AppFontType.swift
//  SmartWallet
//
//  Created by Umair Irfan on 02/04/2023.
//

import Foundation

enum AppFontName: String {
    case RaqiBold = "Raqi-2.0-Bold"
    case RaqiBook = "Raqi-2.0-Book"
    case RaqiExtraBold = "Raqi-2.0-Extra-Bold"
    case RaqiExtraLight = "Raqi-2.0-Extra-Light"
    case RaqiMedium = "Raqi-2.0-Medium"
}


protocol AppFontType {
    func getExtraLightFont() -> AppFontName
    func getLightFont() -> AppFontName
    func getRegularFont() -> AppFontName
    func getMediumFont() -> AppFontName
    func getBoldFont() -> AppFontName
    func getSemiBold() -> AppFontName
    func getExtraBoldFont() -> AppFontName
}

extension AppFontType {
    func getExtraLightFont() -> AppFontName { AppFontName.RaqiExtraLight }
    
    func getLightFont() -> AppFontName { AppFontName.RaqiBook }
    
    func getRegularFont() -> AppFontName { AppFontName.RaqiBook }
    
    func getMediumFont() -> AppFontName { AppFontName.RaqiMedium }
    
    func getBoldFont() -> AppFontName { AppFontName.RaqiBold }
    
    func getSemiBold() -> AppFontName { AppFontName.RaqiExtraBold }
    
    func getExtraBoldFont() -> AppFontName { AppFontName.RaqiExtraBold }
}
