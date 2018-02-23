//
//  MotionActivityModalityModel.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/13/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import CoreMotion

// codebeat:disable[TOO_MANY_IVARS]
public struct MotionActivityModalityModel: ModalityModel {
    var confidence: CMMotionActivityConfidence
    var startDate: Date?
    var unknown: Bool?
    var stationary: Bool?
    var walking: Bool?
    var running: Bool?
    var automotive: Bool?
    var cycling: Bool?
}
// codebeat:enable[TOO_MANY_IVARS]

extension CMMotionActivityConfidence: CustomStringConvertible {
    public var description: String {
        switch self {
        case .low: return "Low"
        case .medium: return "Medium"
        case .high: return "High"
        }
    }
}
