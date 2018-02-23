//
//  BatteryModality.swift
//  SensorKit
//
//  Created by Joseph Blau on 12/7/16.
//  Copyright © 2016 Joe Blau. All rights reserved.
//

import UIKit

public class BatteryModality {
    public private(set) var stimulus = BatteryModalityModel(level: UIDevice.current.batteryLevel,
                                                            state: UIDevice.current.batteryState)

    // MARK: - Lifecycle

    init() {
        UIDevice.current.isBatteryMonitoringEnabled = true
    }

    deinit {
        UIDevice.current.isBatteryMonitoringEnabled = false
    }
}
