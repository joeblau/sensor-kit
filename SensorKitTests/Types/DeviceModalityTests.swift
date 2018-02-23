//
//  DeviceModalityTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/7/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest

@testable import SensorKit

fileprivate let mockDeviceModalityModel = DeviceModalityModel(name: "abc",
                                                              model: "def",
                                                              localizedModel: "hij",
                                                              systemName: "klm",
                                                              systemVersion: "nop",
                                                              orientation: .landscapeLeft,
                                                              interfaceIdiom: .pad)

fileprivate class MockDeviceModality: DeviceModality {
    fileprivate override var stimulus: DeviceModalityModel {
        return mockDeviceModalityModel
    }
}

class DeviceModalityTests: XCTestCase {

    func testDeviceModality() {
        let mockDeviceModality = MockDeviceModality()

        XCTAssertEqual(mockDeviceModality.stimulus.name, "abc")
        XCTAssertEqual(mockDeviceModality.stimulus.model, "def")
        XCTAssertEqual(mockDeviceModality.stimulus.localizedModel, "hij")
        XCTAssertEqual(mockDeviceModality.stimulus.systemName, "klm")
        XCTAssertEqual(mockDeviceModality.stimulus.systemVersion, "nop")
        XCTAssertEqual(mockDeviceModality.stimulus.orientation, .landscapeLeft)
        XCTAssertEqual(mockDeviceModality.stimulus.interfaceIdiom, .pad)
    }
}
