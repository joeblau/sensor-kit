//
//  CellularNetworkModalityTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/4/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
import Foundation
import CallKit
import CoreTelephony

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
fileprivate let testUUID = UUID(uuidString: "E621E1F8-C36C-495A-93FC-0C247A3E6E5F")!

fileprivate class MockCellularNetworkModality: CellularNetworkModality {
    fileprivate override var stimulus: CellularNetworkModalityModel {
        return mockCellularNetworkModalityModel
    }
}
@objc fileprivate class MockCall: NSObject {
    var `UUID` = testUUID
    var isOutgoing: Bool = true
    var isOnHold: Bool = true
    var hasConnected: Bool = true
    var hasEnded: Bool = true
}

class CellularNetworkModalityTests: XCTestCase {

    func testCellularNetworkModality() {
        let mockCellularNetworkModality = MockCellularNetworkModality()

        XCTAssertEqual(mockCellularNetworkModality.stimulus.carrierName, mockCellularNetworkModalityModel.carrierName)
        XCTAssertEqual(mockCellularNetworkModality.stimulus.mobileCountryCode, mockCellularNetworkModalityModel.mobileCountryCode)
        XCTAssertEqual(mockCellularNetworkModality.stimulus.mobileNetworkCode, mockCellularNetworkModalityModel.mobileNetworkCode)
        XCTAssertEqual(mockCellularNetworkModality.stimulus.isoCountryCode, mockCellularNetworkModalityModel.isoCountryCode)
        XCTAssertEqual(mockCellularNetworkModality.stimulus.allowsVOIP, mockCellularNetworkModalityModel.allowsVOIP)
        XCTAssertEqual(mockCellularNetworkModality.stimulus.callsConnected.count, mockCellularNetworkModalityModel.callsConnected.count)
        XCTAssertEqual(mockCellularNetworkModality.stimulus.callsEnded.count, mockCellularNetworkModalityModel.callsEnded.count)
        XCTAssertEqual(mockCellularNetworkModality.stimulus.callsOnHold.count, mockCellularNetworkModalityModel.callsOnHold.count)
        XCTAssertEqual(mockCellularNetworkModality.stimulus.callsOutgoing.count, mockCellularNetworkModalityModel.callsOutgoing.count)
    }

    func testCXCallObserverDelegate() {
        // TODO: Fix Mock CXCall Object
//        let mockCellularNetworkModality = CellularNetworkModality()
//        let mockCall = MockCall()
//        let result = mockCellularNetworkModality.perform(#selector(CellularNetworkModality.callObserver(_:callChanged:)),
//                                                         with: "abc",
//                                                         with: mockCall)
//        XCTAssertNil(result)
    }
}
