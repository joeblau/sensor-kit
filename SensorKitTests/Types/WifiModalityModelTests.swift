//
//  WifiModalityModelTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/13/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
@testable import SensorKit

fileprivate let mockWifiModalityModel = WifiModalityModel(wifiSSID: "WiFi Test")

class WifiModalityModelTests: XCTestCase {
    func testSensorDescription() {
        XCTAssertEqual(mockWifiModalityModel.count, mockWifiModalityModel.descriptionLineCount)
    }

    func testSensorPropertyCount() {
        XCTAssertEqual(mockWifiModalityModel.count, 1)
    }
}
