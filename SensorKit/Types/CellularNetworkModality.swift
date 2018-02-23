//
//  CellularNetworkModality.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/4/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import CoreTelephony
import CallKit

public class CellularNetworkModality: NSObject, CXCallObserverDelegate {
    public private(set) var stimulus = CellularNetworkModalityModel(carrierName: nil,
                                                                   mobileCountryCode: nil,
                                                                   mobileNetworkCode: nil,
                                                                   isoCountryCode: nil,
                                                                   allowsVOIP: nil,
                                                                   callsConnected: Set<UUID>(),
                                                                   callsEnded: Set<UUID>(),
                                                                   callsOnHold: Set<UUID>(),
                                                                   callsOutgoing: Set<UUID>())
    internal var observer: CXCallObserver?

    override init() {
        super.init()
        observer?.setDelegate(self, queue: nil)
        let provider =  CTTelephonyNetworkInfo().subscriberCellularProvider
        stimulus.carrierName = provider?.carrierName
        stimulus.mobileCountryCode = provider?.mobileCountryCode
        stimulus.mobileNetworkCode = provider?.mobileNetworkCode
        stimulus.isoCountryCode = provider?.isoCountryCode
        stimulus.allowsVOIP = provider?.allowsVOIP
    }

    // MARK: - CXCallObserverDelegate

    // codebeat:disable[ARITY]
    public func callObserver(_ callObserver: CXCallObserver, callChanged call: CXCall) {
        print(call.uuid)
        stimulus.callsConnected.remove(call.uuid)
        stimulus.callsEnded.remove(call.uuid)
        stimulus.callsOnHold.remove(call.uuid)
        stimulus.callsOutgoing.remove(call.uuid)

        if call.hasConnected {
            stimulus.callsConnected.insert(call.uuid)
        }

        if call.hasEnded {
            stimulus.callsEnded.insert(call.uuid)
        }

        if call.isOnHold {
            stimulus.callsOnHold.insert(call.uuid)
        }

        if call.isOutgoing {
            stimulus.callsOutgoing.insert(call.uuid)
        }
    }
    // codebeat:enable[ARITY]
}
