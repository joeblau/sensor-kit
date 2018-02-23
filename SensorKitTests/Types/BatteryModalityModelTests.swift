//
//  BatteryModalityModelTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 12/7/16.
//  Copyright © 2016 Joe Blau. All rights reserved.
//

import XCTest
@testable import SensorKit

fileprivate let mockBatteryModalityModel =  BatteryModalityModel(level: 1.0, state: .charging)

class BatteryModalityModelTests: XCTestCase {
    func testSensorDescription() {
        XCTAssertEqual(mockBatteryModalityModel.count, mockBatteryModalityModel.descriptionLineCount)
    }

    func testSensorPropertyCount() {
        XCTAssertEqual(mockBatteryModalityModel.count, 2)
    }

    func testBatteryStateDeviceStrings() {
        let batteryUnknown = BatteryModalityModel(level: 1.0, state: .unknown)
        let batteryUnplugged = BatteryModalityModel(level: 1.0, state: .unplugged)
        let batteryCharging = BatteryModalityModel(level: 1.0, state: .charging)
        let batteryFull = BatteryModalityModel(level: 1.0, state: .full)

        XCTAssertEqual("\(batteryUnknown.state)", "Unknown")
        XCTAssertEqual("\(batteryUnplugged.state)", "Unplugged")
        XCTAssertEqual("\(batteryCharging.state)", "Charging")
        XCTAssertEqual("\(batteryFull.state)", "Full")
    }
}
