//
//  TimeModalityModelTests.swift
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

class TimeModalityModelTests: XCTestCase {
    func testSensorDescription() {
        XCTAssertEqual(mockTimeModalityModel.count, mockTimeModalityModel.descriptionLineCount)
    }

    func testSensorPropertyCount() {
        XCTAssertEqual(mockTimeModalityModel.count, 16)
    }
}
