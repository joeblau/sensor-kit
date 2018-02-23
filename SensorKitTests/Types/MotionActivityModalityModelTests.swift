//
//  MotionActivityModalityModelTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/14/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
@testable import SensorKit

fileprivate let mockMotionActivityModalityModel = MotionActivityModalityModel(confidence: .low,
                                                                              startDate: nil,
                                                                              unknown: nil,
                                                                              stationary: nil,
                                                                              walking: nil,
                                                                              running: nil,
                                                                              automotive: nil,
                                                                              cycling: nil)

class MotionActivityModalityModelTests: XCTestCase {
    func testSensorDescription() {
        XCTAssertEqual(mockMotionActivityModalityModel.count, mockMotionActivityModalityModel.descriptionLineCount)
    }

    func testSensorPropertyCount() {
        XCTAssertEqual(mockMotionActivityModalityModel.count, 8)
    }

    func testMotionActivityConfidenceStringLow() {
        let lowConfidence = MotionActivityModalityModel(confidence: .low,
                                                        startDate: nil,
                                                        unknown: nil,
                                                        stationary: nil,
                                                        walking: nil,
                                                        running: nil,
                                                        automotive: nil,
                                                        cycling: nil)
        XCTAssertEqual(lowConfidence.confidence.description, "Low")
    }

    func testMotionActivityConfidenceStringMedium() {
        let mediumConfidence = MotionActivityModalityModel(confidence: .medium,
                                                           startDate: nil,
                                                           unknown: nil,
                                                           stationary: nil,
                                                           walking: nil,
                                                           running: nil,
                                                           automotive: nil,
                                                           cycling: nil)
        XCTAssertEqual(mediumConfidence.confidence.description, "Medium")
    }

    func testMotionActivityConfidenceStringHigh() {
        let highConfidence = MotionActivityModalityModel(confidence: .high,
                                                         startDate: nil,
                                                         unknown: nil,
                                                         stationary: nil,
                                                         walking: nil,
                                                         running: nil,
                                                         automotive: nil,
                                                         cycling: nil)
        XCTAssertEqual(highConfidence.confidence.description, "High")
    }

}
