//
//  UIDevice+Extensions.swift
//  SmartWallet
//
//  Created by Umair Irfan on 01/04/2023.
//

import UIKit

public enum DeviceOS {
    case iOS, tvOS, macOS
    case unknown
}

public extension UIDevice {
    
    static var isPhysical: Bool {
        #if targetEnvironment(simulator)
        return false
        #else
        return true
        #endif
    }
    
    func getDeviceOS() -> DeviceOS {
        #if os(tvOS)
        return DeviceOS.tvOS
        #elseif os(iOS)
        return DeviceOS.iOS
        #else
        return DeviceOS.unknown
        #endif
    }
    
    func getDeviceType() -> DeviceType {
        switch UIDevice.current.userInterfaceIdiom {
        case .phone:
            return .iphone
        case .tv:
            return .appleTV
        case .pad:
            return .ipad
        case .carPlay:
            return .carPlay
        case .mac:
            return .mac
        default:
            return .unknown
        }
    }
}
