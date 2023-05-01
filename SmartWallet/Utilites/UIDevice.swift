//
//  UIDevice.swift
//  SmartWallet
//
//  Created by Umair Irfan on 01/04/2023.
//

import Foundation

public enum DeviceType {
    case iphone, ipad, appleTV, ipod, carPlay, mac, unknown
}

private enum DeviceModel {
    case iphone7, iphone7Plus, iphone8, iphone8Plus
    case iphoneX, iphoneXS, iphoneXSMax, iphoneXR
    case iphone11, iphone11Pro, iphone11ProMax
    case iphone12, iphone12Pro, iphone12ProMax
    case iphone13, iphone13Pro, iphone13ProMax
    case iphone14, iphone14Pro, iphone14ProMax
    
    var screenSize: DeviceScreenSize {
        switch self {
        case  .iphone7, .iphone8:
            return .small
        default:
            return .large
        }
    }
}

private enum DeviceScreenSize {
    case small
    case large
}
