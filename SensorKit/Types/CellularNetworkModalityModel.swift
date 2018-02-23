//
//  CellularNetworkModalityModel.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/4/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import CallKit

// codebeat:disable[TOO_MANY_IVARS]
public struct CellularNetworkModalityModel: ModalityModel {
    var carrierName: String?
    var mobileCountryCode: String?
    var mobileNetworkCode: String?
    var isoCountryCode: String?
    var allowsVOIP: Bool?
    var callsConnected: Set<UUID>
    var callsEnded: Set<UUID>
    var callsOnHold: Set<UUID>
    var callsOutgoing: Set<UUID>
}
// codebeat:enable[TOO_MANY_IVARS]
