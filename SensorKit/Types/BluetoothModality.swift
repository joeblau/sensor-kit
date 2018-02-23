//
//  BluetoothModality.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/2/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import CoreBluetooth

public class BluetoothModality: NSObject, CBCentralManagerDelegate {
    public private(set) var stimulus = BluetoothModalityModel(state: .unknown,
                                                              peripheralSet: Set<CBPeripheral>(),
                                                              connectedPeripheralSet: Set<CBPeripheral>())

    internal var manager: CBCentralManager?

    // MARK: - Lifecycle

    override init() {
        super.init()
        manager = CBCentralManager(delegate: self, queue: nil)
    }

    // MARK: - CBCentralManagerDelegate

    // codebeat:disable[ARITY]
    public func centralManagerDidUpdateState(_ central: CBCentralManager) {
        stimulus.state = central.state
    }

    public func centralManager(_ central: CBCentralManager,
                               didDiscover peripheral: CBPeripheral,
                               advertisementData: [String : Any],
                               rssi RSSI: NSNumber) {
        stimulus.peripheralSet.insert(peripheral)
    }

    public func centralManager(_ central: CBCentralManager,
                               didConnect peripheral: CBPeripheral) {
        stimulus.connectedPeripheralSet.insert(peripheral)
    }

    public func centralManager(_ central: CBCentralManager,
                               didDisconnectPeripheral peripheral: CBPeripheral,
                               error: Error?) {
        stimulus.connectedPeripheralSet.remove(peripheral)
    }
    // codebeat:enable[ARITY]
}
