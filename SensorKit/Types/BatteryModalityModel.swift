//
//  BatteryModalityModel.swift
//  SensorKit
//
//  Created by Joseph Blau on 12/7/16.
//  Copyright © 2016 Joe Blau. All rights reserved.
//

import UIKit

typealias BatteryLevel = Float

// codebeat:disable[TOO_MANY_IVARS]
public struct BatteryModalityModel: ModalityModel {
    var level: BatteryLevel
    var state: UIDeviceBatteryState
}
// codebeat:enable[TOO_MANY_IVARS]

extension UIDeviceBatteryState: CustomStringConvertible {
    public var description: String {
        switch self {
        case .unknown: return "Unknown"
        case .unplugged: return "Unplugged"
        case .charging: return "Charging"
        case .full: return "Full"
        }
    }
}
