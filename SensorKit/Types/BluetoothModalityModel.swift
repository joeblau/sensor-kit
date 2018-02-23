//
//  BluetoothModalityModel.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/2/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import CoreBluetooth

// codebeat:disable[TOO_MANY_IVARS]
public struct BluetoothModalityModel: ModalityModel {
    var state: CBManagerState
    var peripheralSet: Set<CBPeripheral>
    var connectedPeripheralSet: Set<CBPeripheral>
}
// codebeat:enable[TOO_MANY_IVARS]

extension CBManagerState: CustomStringConvertible {
    public var description: String {
        switch self {
        case .poweredOff: return "Power Off"
        case .poweredOn: return "Power On"
        case .resetting: return "Reseetting"
        case .unauthorized: return "Unauthroized"
        case .unknown: return "Unknown"
        case .unsupported: return "Unsupported"
        }
    }
}
