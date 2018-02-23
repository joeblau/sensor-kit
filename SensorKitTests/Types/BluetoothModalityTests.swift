//
//  BluetoothModalityTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/3/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
import CoreBluetooth

@testable import SensorKit

fileprivate let mockBluetoothModalityModel = BluetoothModalityModel(state: .unknown,
                                                        peripheralSet: Set<CBPeripheral>(),
                                                        connectedPeripheralSet: Set<CBPeripheral>())
fileprivate class MockBluetoothModality: BluetoothModality {
    fileprivate override var stimulus: BluetoothModalityModel {
        return mockBluetoothModalityModel
    }
}

fileprivate class MockCentralManager: CBCentralManager {
    fileprivate override var state: CBManagerState {
        return .poweredOn
    }
}
fileprivate let mockRSSI = NSNumber(value: 100)

class BluetoothModalityTests: XCTestCase {

    func testBluetoothModality() {
        let mockBluetoothModality = MockBluetoothModality()

        XCTAssertEqual(mockBluetoothModality.stimulus.state, mockBluetoothModalityModel.state)
        XCTAssertEqual(mockBluetoothModality.stimulus.peripheralSet.count, mockBluetoothModalityModel.peripheralSet.count)
        XCTAssertEqual(mockBluetoothModality.stimulus.connectedPeripheralSet.count, mockBluetoothModalityModel.connectedPeripheralSet.count)
    }

    func testCBCentralManagerDelegate() {
        let mockBluetoothModality = BluetoothModality()

        let centralManagerMock = MockCentralManager(delegate: nil, queue: nil)

        let bluetoothModalityTestHelper = BluetoothModalityTestHelper()
        bluetoothModalityTestHelper.callDelegates(with: mockBluetoothModality)

        mockBluetoothModality.centralManagerDidUpdateState(centralManagerMock)
        XCTAssertEqual(mockBluetoothModality.stimulus.state, centralManagerMock.state)
    }
}
