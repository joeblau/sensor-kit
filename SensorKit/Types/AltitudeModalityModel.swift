//
//  AltitudeModalityModel.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/15/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation

// codebeat:disable[TOO_MANY_IVARS]
public struct AltitudeModalityModel: ModalityModel {
    var relativeAltitude: NSNumber?
    var pressure: NSNumber?
}
// codebeat:enable[TOO_MANY_IVARS]
