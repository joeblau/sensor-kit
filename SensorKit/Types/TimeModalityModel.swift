//
//  TimeModalityModel.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/9/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation

// codebeat:disable[TOO_MANY_IVARS]
public struct TimeModalityModel: ModalityModel {
    var era: Int?
    var year: Int?
    var month: Int?
    var day: Int?
    var hour: Int?
    var minute: Int?
    var second: Int?
    var nanosecond: Int?
    var weekday: Int?
    var weekdayOrdinal: Int?
    var quarter: Int?
    var weekOfMonth: Int?
    var weekOfYear: Int?
    var yearForWeekOfYear: Int?
    var leapMonth: Bool
    var secondsFromGMT: Int?
}
// codebeat:enable[TOO_MANY_IVARS]
