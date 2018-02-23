//
//  ProximityModality.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/8/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import UIKit

public class ProximityModality {
    public private(set) var stimulus = ProximityModalityModel(proximity: UIDevice.current.proximityState)

    // MARK: - Lifecycle

    init() {
        UIDevice.current.isProximityMonitoringEnabled = true
    }

    deinit {
        UIDevice.current.isProximityMonitoringEnabled = false
    }
}
