//
//  AltitudeModalityTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/15/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
import CoreMotion

@testable import SensorKit

fileprivate let mockNumberTen = NSNumber(value: 10)
fileprivate let mockAltitudeModalityModel =  AltitudeModalityModel(relativeAltitude: mockNumberTen,
                                                                   pressure: mockNumberTen)

fileprivate class MockAltitudeModality: AltitudeModality {
    fileprivate override var stimulus: AltitudeModalityModel {
        return mockAltitudeModalityModel
    }
}

fileprivate class MockAltitudeData: CMAltitudeData {
    fileprivate override var relativeAltitude: NSNumber {
        return mockNumberTen
    }
    fileprivate override var pressure: NSNumber {
        return mockNumberTen
    }
}

class AltitudeModalityTests: XCTestCase {

    func testAltitudeModality() {
        let mockAltitudeModliaty = MockAltitudeModality()
        mockAltitudeModliaty.startSensing()
        XCTAssertNotNil(mockAltitudeModliaty)
    }

    func testAltitudeDataHandler() {
        let mockAltitudeModliaty = MockAltitudeModality()
        let mockAltitudeData = MockAltitudeData()

        mockAltitudeModliaty.senseAltitude()
        mockAltitudeModliaty.updateHandler(altitudeData: mockAltitudeData, error: nil)

        XCTAssertEqual(mockAltitudeModliaty.stimulus.relativeAltitude, mockAltitudeModalityModel.relativeAltitude)
        XCTAssertEqual(mockAltitudeModliaty.stimulus.pressure, mockAltitudeModalityModel.pressure)
    }
}
