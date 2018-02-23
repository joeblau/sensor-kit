//
//  ProximityModalityTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/8/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
@testable import SensorKit

fileprivate let mockProximityModalityModel = ProximityModalityModel(proximity: true)

fileprivate class MockProximityModality: ProximityModality {
    fileprivate override var stimulus: ProximityModalityModel {
        return mockProximityModalityModel
    }
}

class ProximityModalityTests: XCTestCase {
    func testProximityModality() {
        let mockProximityModality = MockProximityModality()

        XCTAssertEqual(mockProximityModality.stimulus.proximity, mockProximityModalityModel.proximity)
    }

    func testProximityMonitoringLifecycle() {
        var proximityModality: ProximityModality? = ProximityModality()
        XCTAssertNotNil(proximityModality)
        proximityModality = nil
        XCTAssertNil(proximityModality)
    }

}
