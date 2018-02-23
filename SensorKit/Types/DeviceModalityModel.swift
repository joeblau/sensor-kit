//
//  DeviceModalityModel.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/7/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import UIKit

// codebeat:disable[TOO_MANY_IVARS]
public struct DeviceModalityModel: ModalityModel {
    var name: String?
    var model: String?
    var localizedModel: String?
    var systemName: String?
    var systemVersion: String?
    var orientation: UIDeviceOrientation
    var interfaceIdiom: UIUserInterfaceIdiom
}
// codebeat:enable[TOO_MANY_IVARS]

extension UIDeviceOrientation: CustomStringConvertible {
    public var description: String {
        switch self {
        case .faceDown: return "Face Down"
        case .faceUp: return "Face Up"
        case .landscapeLeft: return "Landscape Left"
        case .landscapeRight: return "Landscape Right"
        case .portrait: return "Portrait"
        case .portraitUpsideDown: return "Portrait Upside Down"
        case .unknown: return "Unknown"
        }
    }
}

extension UIUserInterfaceIdiom: CustomStringConvertible {
    public var description: String {
        switch self {
        case .carPlay: return "Car Play"
        case .pad: return "iPad"
        case .phone: return "iPhone"
        case .tv: return "TV"
        case .unspecified: return "Unspecified"
        }
    }
}
