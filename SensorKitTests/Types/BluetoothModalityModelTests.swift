//
//  BluetoothModalityModelTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/2/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
import CoreBluetooth
@testable import SensorKit

fileprivate let mockBluetoothModalityModel = BluetoothModalityModel(state: .poweredOn,
                                                                    peripheralSet: Set(),
                                                                    connectedPeripheralSet: Set())

class BluetoothModalityModelTests: XCTestCase {
    func testSensorDescription() {
        XCTAssertEqual(mockBluetoothModalityModel.count, mockBluetoothModalityModel.descriptionLineCount)
    }

    func testSensorPropertyCount() {
        XCTAssertEqual(mockBluetoothModalityModel.count, 3)
    }

    func testBluetoothStateDeviceStrings() {
        let bluetoothPoweredOff = BluetoothModalityModel(state: .poweredOff,
                                                         peripheralSet: Set(),
                                                         connectedPeripheralSet: Set())
        let bluetoothPoweredOn = BluetoothModalityModel(state: .poweredOn,
                                                        peripheralSet: Set(),
                                                        connectedPeripheralSet: Set())
        let bluetoothResetting = BluetoothModalityModel(state: .resetting,
                                                        peripheralSet: Set(),
                                                        connectedPeripheralSet: Set())
        let bluetoothUnauthorized = BluetoothModalityModel(state: .unauthorized,
                                                           peripheralSet: Set(),
                                                           connectedPeripheralSet: Set())
        let bluetoothUnknown = BluetoothModalityModel(state: .unknown,
                                                      peripheralSet: Set(),
                                                      connectedPeripheralSet: Set())
        let bluetoothUnsupported = BluetoothModalityModel(state: .unsupported,
                                                          peripheralSet: Set(),
                                                          connectedPeripheralSet: Set())

        XCTAssertEqual("\(bluetoothPoweredOff.state)", "Power Off")
        XCTAssertEqual("\(bluetoothPoweredOn.state)", "Power On")
        XCTAssertEqual("\(bluetoothResetting.state)", "Reseetting")
        XCTAssertEqual("\(bluetoothUnauthorized.state)", "Unauthroized")
        XCTAssertEqual("\(bluetoothUnknown.state)", "Unknown")
        XCTAssertEqual("\(bluetoothUnsupported.state)", "Unsupported")
    }
}
