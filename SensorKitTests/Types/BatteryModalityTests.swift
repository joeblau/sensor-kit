//
//  BatteryModalityTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/2/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
@testable import SensorKit

fileprivate let mockBatteryModalityModel = BatteryModalityModel(level: 0.6, state: .charging)

fileprivate class MockBatteryModality: BatteryModality {
    fileprivate override var stimulus: BatteryModalityModel {
        return mockBatteryModalityModel
    }
}

class BatteryModalityTests: XCTestCase {

    func testBatteryModality() {
        let mockBatteryModality = MockBatteryModality()

        XCTAssertEqual(mockBatteryModality.stimulus.level, mockBatteryModalityModel.level)
        XCTAssertEqual(mockBatteryModality.stimulus.state, mockBatteryModalityModel.state)
    }

    func testBatteryMonitoringLifecycle() {
        var batteryModality: BatteryModality? = BatteryModality()
        XCTAssertNotNil(batteryModality)
        batteryModality = nil
        XCTAssertNil(batteryModality)
    }
}
