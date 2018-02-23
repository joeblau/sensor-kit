//
//  AstronomyModalityTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/5/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
import CoreLocation
import AstronomyKit

@testable import SensorKit

fileprivate let mockAstronomyModalityModel = AstronomyModalityModel(lunarRise: Date.init(timeIntervalSince1970: 0),
                                                        lunarTransit: Date.init(timeIntervalSince1970: 0),
                                                        lunarSet: Date.init(timeIntervalSince1970: 0),
                                                        solarRise: Date.init(timeIntervalSince1970: 0),
                                                        solarTransit: Date.init(timeIntervalSince1970: 0),
                                                        solarSet: Date.init(timeIntervalSince1970: 0))

fileprivate class MockAstronomyModality: AstronomyModality {
    fileprivate override var stimulus: AstronomyModalityModel {
        return mockAstronomyModalityModel
    }
}

class AstronomyModalityTests: XCTestCase {
    func testAstronomyModality() {
        let mockAstronomyModality = MockAstronomyModality()

        XCTAssertEqual(mockAstronomyModality.stimulus.lunarRise, mockAstronomyModalityModel.lunarRise)
        XCTAssertEqual(mockAstronomyModality.stimulus.lunarTransit, mockAstronomyModalityModel.lunarTransit)
        XCTAssertEqual(mockAstronomyModality.stimulus.lunarSet, mockAstronomyModalityModel.lunarSet)
        XCTAssertEqual(mockAstronomyModality.stimulus.solarRise, mockAstronomyModalityModel.solarRise)
        XCTAssertEqual(mockAstronomyModality.stimulus.solarTransit, mockAstronomyModalityModel.solarTransit)
        XCTAssertEqual(mockAstronomyModality.stimulus.solarSet, mockAstronomyModalityModel.solarSet)
    }

    func testAstronomyModalityUpdate() {
        let mockAstronomyModality = AstronomyModality()

        let calendar = NSCalendar.gregorian()
        let updatedDate = calendar.date(era: 1,
                                        year: 2017,
                                        month: 01,
                                        day: 05,
                                        hour: 0,
                                        minute: 0,
                                        second: 0,
                                        nanosecond: 0)!
        let updatedLocation = CLLocationCoordinate2D(latitude: 0, longitude: 0)

        mockAstronomyModality.updateStimulus(date: updatedDate, location: updatedLocation)

        XCTAssertEqual(mockAstronomyModality.stimulus.lunarRise!.timeIntervalSince1970, 1483616624.0)
        XCTAssertEqual(mockAstronomyModality.stimulus.lunarTransit.timeIntervalSince1970, 1483638943.0)
//        XCTAssertEqual(mockAstronomyModality.stimulus.lunarSet!.timeIntervalSince1970, 1483661270.0)
        XCTAssertEqual(mockAstronomyModality.stimulus.solarRise!.timeIntervalSince1970, 1483596038.0)
        XCTAssertEqual(mockAstronomyModality.stimulus.solarTransit.timeIntervalSince1970, 1483617861.0)
        XCTAssertEqual(mockAstronomyModality.stimulus.solarSet!.timeIntervalSince1970, 1483639684.0)
    }
}
