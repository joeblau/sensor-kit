//
//  MotionModalityModel.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/14/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import CoreMotion

// codebeat:disable[TOO_MANY_IVARS]
public struct MotionModalityModel: ModalityModel {
    // CMDeviceMotion
    var deviceMotionAttitudeYaw: Double?
    var deviceMotionAttitudePitch: Double?
    var deviceMotionAttitudeRoll: Double?
    var deviceMotionAttitudeRotationMatrix: CMRotationMatrix?
    var deviceMotionAttitudeQuaternion: CMQuaternion?
    var deviceMotionRotationRateX: Double?
    var deviceMotionRotationRateY: Double?
    var deviceMotionRotationRateZ: Double?
    var deviceMotionGravityX: Double?
    var deviceMotionGravityY: Double?
    var deviceMotionGravityZ: Double?
    var deviceMotionUserAccelerationX: Double?
    var deviceMotionUserAccelerationY: Double?
    var deviceMotionUserAccelerationZ: Double?
    var deviceMotionMagneticFieldAccuracy: CMMagneticFieldCalibrationAccuracy
    var deviceMotionMagneticFieldX: Double?
    var deviceMotionMagneticFieldY: Double?
    var deviceMotionMagneticFieldZ: Double?

    // CMMagnetometerData
    var magnetometerDataMagneticFieldX: Double?
    var magnetometerDataMagneticFieldY: Double?
    var magnetometerDataMagneticFieldZ: Double?

    // CMAccelerometerData
    var accelerometerDataAccelerationX: Double?
    var accelerometerDataAccelerationY: Double?
    var accelerometerDataAccelerationZ: Double?

    // CMGyroData
    var gyroDataRotationRateX: Double?
    var gyroDataRotationRateY: Double?
    var gyroDataRotationRateZ: Double?
}
// codebeat:enable[TOO_MANY_IVARS]

extension CMMagneticFieldCalibrationAccuracy: CustomStringConvertible {
    public var description: String {
        switch self {
        case .high: return "High"
        case .medium: return "Medium"
        case .low: return "Low"
        case .uncalibrated: return "Uncalibrated"
        }
    }
}
