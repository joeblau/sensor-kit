//
//  TimeModalityTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/11/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest

@testable import SensorKit

fileprivate let mockTimeModalityModel = TimeModalityModel(era: 1,
                                                          year: 2,
                                                          month: 3,
                                                          day: 4,
                                                          hour: 5,
                                                          minute: 6,
                                                          second: 7,
                                                          nanosecond: 8,
                                                          weekday: 9,
                                                          weekdayOrdinal: 10,
                                                          quarter: 11,
                                                          weekOfMonth: 12,
                                                          weekOfYear: 13,
                                                          yearForWeekOfYear: 14,
                                                          leapMonth: true,
                                                          secondsFromGMT: 16)

fileprivate class MockTimeModality: TimeModality {
    fileprivate override var stimulus: TimeModalityModel {
        return mockTimeModalityModel
    }
}

class TimeModalityTests: XCTestCase {
    func testTimeModality() {
        let mockTimeModality = MockTimeModality()

        XCTAssertEqual(mockTimeModality.stimulus.era, mockTimeModalityModel.era)
        XCTAssertEqual(mockTimeModality.stimulus.year, mockTimeModalityModel.year)
        XCTAssertEqual(mockTimeModality.stimulus.month, mockTimeModalityModel.month)
        XCTAssertEqual(mockTimeModality.stimulus.day, mockTimeModalityModel.day)
        XCTAssertEqual(mockTimeModality.stimulus.hour, mockTimeModalityModel.hour)
        XCTAssertEqual(mockTimeModality.stimulus.minute, mockTimeModalityModel.minute)
        XCTAssertEqual(mockTimeModality.stimulus.second, mockTimeModalityModel.second)
        XCTAssertEqual(mockTimeModality.stimulus.nanosecond, mockTimeModalityModel.nanosecond)
        XCTAssertEqual(mockTimeModality.stimulus.weekday, mockTimeModalityModel.weekday)
        XCTAssertEqual(mockTimeModality.stimulus.weekdayOrdinal, mockTimeModalityModel.weekdayOrdinal)
        XCTAssertEqual(mockTimeModality.stimulus.quarter, mockTimeModalityModel.quarter)
        XCTAssertEqual(mockTimeModality.stimulus.weekOfMonth, mockTimeModalityModel.weekOfMonth)
        XCTAssertEqual(mockTimeModality.stimulus.weekOfYear, mockTimeModalityModel.weekOfYear)
        XCTAssertEqual(mockTimeModality.stimulus.yearForWeekOfYear, mockTimeModalityModel.yearForWeekOfYear)
        XCTAssertTrue(mockTimeModality.stimulus.leapMonth)
        XCTAssertEqual(mockTimeModality.stimulus.secondsFromGMT, mockTimeModalityModel.secondsFromGMT)
    }
}
