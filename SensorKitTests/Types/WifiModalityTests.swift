//
//  WifiModalityTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/13/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest

@testable import SensorKit

fileprivate let mockWifiModalityModel = WifiModalityModel(wifiSSID: "WiFi Test")

fileprivate class MockWifiModality: WifiModality {
    fileprivate override var stimulus: WifiModalityModel {
        return mockWifiModalityModel
    }
}

class WifiModalityTests: XCTestCase {

    func testWifiModality() {
        let mockWifiModality = WifiModality()
        mockWifiModality.updateStimulus(interfaceNames: ["WiFi Test", "WiFi Test"] as CFArray)

        XCTAssertNil(mockWifiModality.stimulus.wifiSSID)
    }

    func testIncorrectNetworkInfo() {
        let mockWifiModality = MockWifiModality()
        let interfaces = ["MainWifi", "OtherWifi"]
        let ssids = mockWifiModality.currentSSIDs(interfaceNames: interfaces)
        XCTAssertNil(ssids?.first)
        XCTAssertEqual(mockWifiModality.stimulus.wifiSSID, mockWifiModalityModel.wifiSSID)
    }
//    
//    func testNoNetworks() {
//        let mockWifiModality = WifiModality()
//        let ssids = mockWifiModality.currentSSIDs(interfaceNames: [])
//    }
}
