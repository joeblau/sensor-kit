//
//  AstronomyModalityModel.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/5/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation

// codebeat:disable[TOO_MANY_IVARS]
public struct AstronomyModalityModel: ModalityModel {
    var lunarRise: Date?
    var lunarTransit: Date
    var lunarSet: Date?
    var solarRise: Date?
    var solarTransit: Date
    var solarSet: Date?
}
// codebeat:enable[TOO_MANY_IVARS]
