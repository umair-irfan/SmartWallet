//
//  AppFonts.swift
//  SmartWallet
//
//  Created by Umair Irfan on 01/04/2023.
//

import SwiftUI

enum AppFonts: AppFontType {
    
    case extraLight, light
    case regular
    case medium
    case bold, semibold, extraBold
    
    fileprivate func getFontName() -> AppFontName {
        switch self {
        case .extraLight:
            return self.getExtraLightFont()
        case .light:
            return self.getLightFont()
        case .regular:
            return self.getRegularFont()
        case .medium:
            return self.getMediumFont()
        case .semibold:
            return self.getSemiBold()
        case .bold:
            return self.getBoldFont()
        case .extraBold:
            return self.getExtraBoldFont()
        }
    }
    
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    public func font(with size: AppFontSize) -> Font {
        return Font.custom(self.getFontName().rawValue, size: size.fontSize)
    }
}

public enum AppFontSize: Int {
    
    case h1 = 11
    case h2 = 12
    case h3 = 13
    case h4 = 14
    
    case b1 = 15
    case b2 = 16
    case b3 = 17
    case b4 = 18
    
    case p1 = 19
    case p2 = 20
    case p3 = 21
    case p4 = 22
    
    var fontSize: CGFloat {
        switch UIDevice.current.getDeviceType() {
        case .iphone:
            return iphoneFontSize
        case .ipad:
            return ipadFontSize
        case .appleTV:
            return appleTVFontSize
        default:
            return defaultFontSize
        }
    }
}

fileprivate extension AppFontSize {
    
    var defaultFontSize: CGFloat {
        switch self {
        case .h1:
            return 32.0
        case .h2:
            return 24.0
        case .h3:
            return 17.0
        case .h4:
            return 16.0
        case .b1:
            return 18.0
        case .b2:
            return 19.0
        case .b3:
            return 20.0
        case .b4:
            return 21.0
        case .p1, .p2, .p3, .p4:
            return 18.0
        }
    }
    
    var iphoneFontSize: CGFloat {
        switch self {
        case .h1:
            return 32.0
        case .h2:
            return 24.0
        case .h3:
            return 17.0
        case .h4:
            return 16.0
        case .b1:
            return 18.0
        case .b2:
            return 19.0
        case .b3:
            return 20.0
        case .b4:
            return 21.0
        case .p1, .p2, .p3, .p4:
            return 18.0
        }
    }
    
    var ipadFontSize: CGFloat {
        switch self {
        case .h1:
            return 32.0
        case .h2:
            return 24.0
        case .h3:
            return 17.0
        case .h4:
            return 16.0
        case .b1:
            return 18.0
        case .b2:
            return 19.0
        case .b3:
            return 20.0
        case .b4:
            return 21.0
        case .p1, .p2, .p3, .p4:
            return 18.0
        }
    }
    
    var appleTVFontSize: CGFloat {
        switch self {
        case .h1:
            return 48.0
        case .h2:
            return 24.0
        case .h3:
            return 17.0
        case .h4:
            return 16.0
        case .b1:
            return 18.0
        case .b2:
            return 19.0
        case .b3:
            return 20.0
        case .b4:
            return 21.0
        case .p1, .p2, .p3, .p4:
            return 18.0
        }
    }
}



