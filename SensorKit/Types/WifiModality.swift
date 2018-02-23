//
//  WifiModality.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/13/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import SystemConfiguration.CaptiveNetwork

public class WifiModality {
    public private(set) var stimulus = WifiModalityModel(wifiSSID: nil)

    public func updateStimulus(interfaceNames: CFArray? = CNCopySupportedInterfaces()) {
        if let interfaceNames = interfaceNames as? [String] {
            stimulus.wifiSSID = currentSSIDs(interfaceNames: interfaceNames)?.first
        }
    }

    internal func currentSSIDs(interfaceNames: [String]) -> [String]? {
        return interfaceNames.flatMap { name in
            return generateSSID(info: CNCopyCurrentNetworkInfo(name as CFString))
        }
    }

    public func generateSSID(info: CFDictionary?) -> String? {
        return (info as? [String: AnyObject])?[kCNNetworkInfoKeySSID as String] as? String
    }
}
