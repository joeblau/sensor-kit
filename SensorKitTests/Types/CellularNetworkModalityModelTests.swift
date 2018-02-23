//
//  CellularNetworkModalityModelTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/4/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
@testable import SensorKit

fileprivate let mockCellularNetworkModalityModel = CellularNetworkModalityModel(carrierName: "abc",
                                                                                mobileCountryCode: "def",
                                                                                mobileNetworkCode: "hij",
                                                                                isoCountryCode: "klm",
                                                                                allowsVOIP: true,
                                                                                callsConnected: Set<UUID>(),
                                                                                callsEnded: Set<UUID>(),
                                                                                callsOnHold: Set<UUID>(),
                                                                                callsOutgoing: Set<UUID>())

class CellularNetworkModalityModelTests: XCTestCase {
    func testSensorDescription() {
        XCTAssertEqual(mockCellularNetworkModalityModel.count, mockCellularNetworkModalityModel.descriptionLineCount)
    }

    func testSensorPropertyCount() {
        XCTAssertEqual(mockCellularNetworkModalityModel.count, 9)
    }
}
