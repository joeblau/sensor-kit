//
//  ProximityModalityModelTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/8/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
@testable import SensorKit

fileprivate let mockProximityModalityModel = ProximityModalityModel(proximity: true)

class ProximityModalityModelTests: XCTestCase {
    func testSensorDescription() {
        XCTAssertEqual(mockProximityModalityModel.count, mockProximityModalityModel.descriptionLineCount)
    }

    func testSensorPropertyCount() {
        XCTAssertEqual(mockProximityModalityModel.count, 1)
    }

    func testBatteryStateDeviceStrings() {
        let proximityTrue = ProximityModalityModel(proximity: true)
        XCTAssertEqual(proximityTrue.proximity, true)

        let proximityFalse = ProximityModalityModel(proximity: false)
        XCTAssertEqual(proximityFalse.proximity, false)
    }
}
