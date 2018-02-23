//
//  MotionModalityModelTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/14/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
@testable import SensorKit

fileprivate let mockMotionModalityModel = MotionModalityModel(deviceMotionAttitudeYaw: nil,
                                                              deviceMotionAttitudePitch: nil,
                                                              deviceMotionAttitudeRoll: nil,
                                                              deviceMotionAttitudeRotationMatrix: nil,
                                                              deviceMotionAttitudeQuaternion: nil,
                                                              deviceMotionRotationRateX: nil,
                                                              deviceMotionRotationRateY: nil,
                                                              deviceMotionRotationRateZ: nil,
                                                              deviceMotionGravityX: nil,
                                                              deviceMotionGravityY: nil,
                                                              deviceMotionGravityZ: nil,
                                                              deviceMotionUserAccelerationX: nil,
                                                              deviceMotionUserAccelerationY: nil,
                                                              deviceMotionUserAccelerationZ: nil,
                                                              deviceMotionMagneticFieldAccuracy: .uncalibrated,
                                                              deviceMotionMagneticFieldX: nil,
                                                              deviceMotionMagneticFieldY: nil,
                                                              deviceMotionMagneticFieldZ: nil,
                                                              magnetometerDataMagneticFieldX: nil,
                                                              magnetometerDataMagneticFieldY: nil,
                                                              magnetometerDataMagneticFieldZ: nil,
                                                              accelerometerDataAccelerationX: nil,
                                                              accelerometerDataAccelerationY: nil,
                                                              accelerometerDataAccelerationZ: nil,
                                                              gyroDataRotationRateX: nil,
                                                              gyroDataRotationRateY: nil,
                                                              gyroDataRotationRateZ: nil)

class MotionModalityModelTests: XCTestCase {
    func testSensorDescription() {
        XCTAssertEqual(mockMotionModalityModel.count, mockMotionModalityModel.descriptionLineCount)
    }

    func testSensorPropertyCount() {
        XCTAssertEqual(mockMotionModalityModel.count, 27)
    }

    func testMagneticFieldCalibrationAccuracyStringUncalibrated() {
        let uncalibratedMagneticFieldCalibrationAccuracy = MotionModalityModel(deviceMotionAttitudeYaw: nil,
                                                                               deviceMotionAttitudePitch: nil,
                                                                               deviceMotionAttitudeRoll: nil,
                                                                               deviceMotionAttitudeRotationMatrix: nil,
                                                                               deviceMotionAttitudeQuaternion: nil,
                                                                               deviceMotionRotationRateX: nil,
                                                                               deviceMotionRotationRateY: nil,
                                                                               deviceMotionRotationRateZ: nil,
                                                                               deviceMotionGravityX: nil,
                                                                               deviceMotionGravityY: nil,
                                                                               deviceMotionGravityZ: nil,
                                                                               deviceMotionUserAccelerationX: nil,
                                                                               deviceMotionUserAccelerationY: nil,
                                                                               deviceMotionUserAccelerationZ: nil,
                                                                               deviceMotionMagneticFieldAccuracy: .uncalibrated,
                                                                               deviceMotionMagneticFieldX: nil,
                                                                               deviceMotionMagneticFieldY: nil,
                                                                               deviceMotionMagneticFieldZ: nil,
                                                                               magnetometerDataMagneticFieldX: nil,
                                                                               magnetometerDataMagneticFieldY: nil,
                                                                               magnetometerDataMagneticFieldZ: nil,
                                                                               accelerometerDataAccelerationX: nil,
                                                                               accelerometerDataAccelerationY: nil,
                                                                               accelerometerDataAccelerationZ: nil,
                                                                               gyroDataRotationRateX: nil,
                                                                               gyroDataRotationRateY: nil,
                                                                               gyroDataRotationRateZ: nil)
        XCTAssertEqual(uncalibratedMagneticFieldCalibrationAccuracy.deviceMotionMagneticFieldAccuracy.description, "Uncalibrated")
    }

    func testMagneticFieldCalibrationAccuracyStringLow() {
        let lowMagneticFieldCalibrationAccuracy = MotionModalityModel(deviceMotionAttitudeYaw: nil,
                                                                      deviceMotionAttitudePitch: nil,
                                                                      deviceMotionAttitudeRoll: nil,
                                                                      deviceMotionAttitudeRotationMatrix: nil,
                                                                      deviceMotionAttitudeQuaternion: nil,
                                                                      deviceMotionRotationRateX: nil,
                                                                      deviceMotionRotationRateY: nil,
                                                                      deviceMotionRotationRateZ: nil,
                                                                      deviceMotionGravityX: nil,
                                                                      deviceMotionGravityY: nil,
                                                                      deviceMotionGravityZ: nil,
                                                                      deviceMotionUserAccelerationX: nil,
                                                                      deviceMotionUserAccelerationY: nil,
                                                                      deviceMotionUserAccelerationZ: nil,
                                                                      deviceMotionMagneticFieldAccuracy: .low,
                                                                      deviceMotionMagneticFieldX: nil,
                                                                      deviceMotionMagneticFieldY: nil,
                                                                      deviceMotionMagneticFieldZ: nil,
                                                                      magnetometerDataMagneticFieldX: nil,
                                                                      magnetometerDataMagneticFieldY: nil,
                                                                      magnetometerDataMagneticFieldZ: nil,
                                                                      accelerometerDataAccelerationX: nil,
                                                                      accelerometerDataAccelerationY: nil,
                                                                      accelerometerDataAccelerationZ: nil,
                                                                      gyroDataRotationRateX: nil,
                                                                      gyroDataRotationRateY: nil,
                                                                      gyroDataRotationRateZ: nil)
        XCTAssertEqual(lowMagneticFieldCalibrationAccuracy.deviceMotionMagneticFieldAccuracy.description, "Low")
    }

    func testMagneticFieldCalibrationAccuracyStringMedium() {
        let mediumMagneticFieldCalibrationAccuracy = MotionModalityModel(deviceMotionAttitudeYaw: nil,
                                                                         deviceMotionAttitudePitch: nil,
                                                                         deviceMotionAttitudeRoll: nil,
                                                                         deviceMotionAttitudeRotationMatrix: nil,
                                                                         deviceMotionAttitudeQuaternion: nil,
                                                                         deviceMotionRotationRateX: nil,
                                                                         deviceMotionRotationRateY: nil,
                                                                         deviceMotionRotationRateZ: nil,
                                                                         deviceMotionGravityX: nil,
                                                                         deviceMotionGravityY: nil,
                                                                         deviceMotionGravityZ: nil,
                                                                         deviceMotionUserAccelerationX: nil,
                                                                         deviceMotionUserAccelerationY: nil,
                                                                         deviceMotionUserAccelerationZ: nil,
                                                                         deviceMotionMagneticFieldAccuracy: .medium,
                                                                         deviceMotionMagneticFieldX: nil,
                                                                         deviceMotionMagneticFieldY: nil,
                                                                         deviceMotionMagneticFieldZ: nil,
                                                                         magnetometerDataMagneticFieldX: nil,
                                                                         magnetometerDataMagneticFieldY: nil,
                                                                         magnetometerDataMagneticFieldZ: nil,
                                                                         accelerometerDataAccelerationX: nil,
                                                                         accelerometerDataAccelerationY: nil,
                                                                         accelerometerDataAccelerationZ: nil,
                                                                         gyroDataRotationRateX: nil,
                                                                         gyroDataRotationRateY: nil,
                                                                         gyroDataRotationRateZ: nil)
        XCTAssertEqual(mediumMagneticFieldCalibrationAccuracy.deviceMotionMagneticFieldAccuracy.description, "Medium")

    }

    func testMagneticFieldCalibrationAccuracyStringHight() {
        let highMagneticFieldCalibrationAccuracy = MotionModalityModel(deviceMotionAttitudeYaw: nil,
                                                                       deviceMotionAttitudePitch: nil,
                                                                       deviceMotionAttitudeRoll: nil,
                                                                       deviceMotionAttitudeRotationMatrix: nil,
                                                                       deviceMotionAttitudeQuaternion: nil,
                                                                       deviceMotionRotationRateX: nil,
                                                                       deviceMotionRotationRateY: nil,
                                                                       deviceMotionRotationRateZ: nil,
                                                                       deviceMotionGravityX: nil,
                                                                       deviceMotionGravityY: nil,
                                                                       deviceMotionGravityZ: nil,
                                                                       deviceMotionUserAccelerationX: nil,
                                                                       deviceMotionUserAccelerationY: nil,
                                                                       deviceMotionUserAccelerationZ: nil,
                                                                       deviceMotionMagneticFieldAccuracy: .high,
                                                                       deviceMotionMagneticFieldX: nil,
                                                                       deviceMotionMagneticFieldY: nil,
                                                                       deviceMotionMagneticFieldZ: nil,
                                                                       magnetometerDataMagneticFieldX: nil,
                                                                       magnetometerDataMagneticFieldY: nil,
                                                                       magnetometerDataMagneticFieldZ: nil,
                                                                       accelerometerDataAccelerationX: nil,
                                                                       accelerometerDataAccelerationY: nil,
                                                                       accelerometerDataAccelerationZ: nil,
                                                                       gyroDataRotationRateX: nil,
                                                                       gyroDataRotationRateY: nil,
                                                                       gyroDataRotationRateZ: nil)
        XCTAssertEqual(highMagneticFieldCalibrationAccuracy.deviceMotionMagneticFieldAccuracy.description, "High")
    }
}
