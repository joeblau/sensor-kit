//
//  AltitudeModality.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/15/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import CoreMotion

private class SensorKitAltimeter: CMAltimeter {
    override class func isRelativeAltitudeAvailable() -> Bool {
        return super.isRelativeAltitudeAvailable() || ProcessInfo.runningTests
    }
}

public class AltitudeModality {
    private var altimeter = SensorKitAltimeter()
    private let currentQueue = OperationQueue.current!
    public private(set) var stimulus = AltitudeModalityModel(relativeAltitude: nil, pressure: nil)

    init() {
        startSensing()
    }

    deinit {
        altimeter.stopRelativeAltitudeUpdates()
    }

    // MARK: - Internal

    internal func startSensing() {
        if SensorKitAltimeter.isRelativeAltitudeAvailable() {
            senseAltitude()
        }
    }

    internal func senseAltitude() {
        altimeter.startRelativeAltitudeUpdates(to: currentQueue, withHandler: updateHandler)
    }

    internal func updateHandler(altitudeData: CMAltitudeData?, error: Error?) {
        if let altitudeData = altitudeData {
            stimulus.relativeAltitude = altitudeData.relativeAltitude
            stimulus.pressure = altitudeData.pressure
        }
    }
}
