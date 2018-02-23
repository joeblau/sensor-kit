//
//  MotionActivityModalityTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/14/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
import CoreMotion

@testable import SensorKit

fileprivate let mockMotionActivityModalityModel = MotionActivityModalityModel(confidence: .low,
                                                                              startDate: nil,
                                                                              unknown: nil,
                                                                              stationary: nil,
                                                                              walking: nil,
                                                                              running: nil,
                                                                              automotive: nil,
                                                                              cycling: nil)
fileprivate let mockMotionDate = Date(timeIntervalSince1970: 100)
fileprivate let mockMediumConfidence = CMMotionActivityConfidence.medium
fileprivate class MockMotionActivity: CMMotionActivity {
    fileprivate override var confidence: CMMotionActivityConfidence {
        return mockMediumConfidence
    }
    fileprivate override var startDate: Date {
        return mockMotionDate
    }
    fileprivate override var unknown: Bool {
        return false
    }
    fileprivate override var stationary: Bool {
        return true
    }
    fileprivate override var walking: Bool {
        return true
    }
    fileprivate override var running: Bool {
        return true
    }
    fileprivate override var automotive: Bool {
        return true
    }
    fileprivate override var cycling: Bool {
        return true
    }
}

class MotionActivityModalityTests: XCTestCase {
    func testMotionActivityModality() {
        let mockMotionActivityModality = MotionActivityModality()
        mockMotionActivityModality.updateStimulus()
        XCTAssertNotNil(mockMotionActivityModality)
    }

    func testCoreMotionActivityHandler() {
        let mockMotionActivityModality = MotionActivityModality()
        let mockMotionActivity = MockMotionActivity()

        mockMotionActivityModality.coreMotionActivityHandler(activity: mockMotionActivity)
        XCTAssertNotNil(mockMotionActivityModality)
    }

    func testUpdateMotionActivityModality() {
        let mockMotionActivityModality = MotionActivityModality()
        let mockMotionActivity = MockMotionActivity()

        mockMotionActivityModality.updateActivitiy(activity: mockMotionActivity)
        XCTAssertEqual(mockMotionActivityModality.stimulus.confidence, mockMediumConfidence)
        XCTAssertEqual(mockMotionActivityModality.stimulus.startDate!, mockMotionDate)
        XCTAssertFalse(mockMotionActivityModality.stimulus.unknown!)
        XCTAssertTrue(mockMotionActivityModality.stimulus.stationary!)
        XCTAssertTrue(mockMotionActivityModality.stimulus.walking!)
        XCTAssertTrue(mockMotionActivityModality.stimulus.running!)
        XCTAssertTrue(mockMotionActivityModality.stimulus.automotive!)
        XCTAssertTrue(mockMotionActivityModality.stimulus.cycling!)
    }
}
