//
//  AstronomyModalityModelTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/5/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
@testable import SensorKit

class AstronomyModalityModelTests: XCTestCase {

    fileprivate var mockAstronomyModalityModel: AstronomyModalityModel!

    override func setUp() {
        super.setUp()
        mockAstronomyModalityModel = AstronomyModalityModel(lunarRise: Date.init(timeIntervalSince1970: 0),
                                                            lunarTransit: Date.init(timeIntervalSince1970: 0),
                                                            lunarSet: Date.init(timeIntervalSince1970: 0),
                                                            solarRise: Date.init(timeIntervalSince1970: 0),
                                                            solarTransit: Date.init(timeIntervalSince1970: 0),
                                                            solarSet: Date.init(timeIntervalSince1970: 0))
    }

    func testSensorDescription() {
        XCTAssertEqual(mockAstronomyModalityModel.count, mockAstronomyModalityModel.descriptionLineCount)
    }

    func testSensorPropertyCount() {
        XCTAssertEqual(mockAstronomyModalityModel.count, 6)
    }
}
