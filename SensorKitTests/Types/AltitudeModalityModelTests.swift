//
//  AltitudeModalityModelTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/15/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest

@testable import SensorKit

fileprivate let mockAltitudeModalityModel =  AltitudeModalityModel(relativeAltitude: 10.0, pressure: 10.0)

class AltitudeModalityModelTests: XCTestCase {

    func testSensorDescription() {
        XCTAssertEqual(mockAltitudeModalityModel.count, mockAltitudeModalityModel.descriptionLineCount)
    }

    func testSensorPropertyCount() {
        XCTAssertEqual(mockAltitudeModalityModel.count, 2)
    }
}
