//
//  MotionModalityTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/14/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
import CoreMotion

@testable import SensorKit

fileprivate let doubleValueTen = 10.0
fileprivate let mockMotionModalityModel = MotionModalityModel(deviceMotionAttitudeYaw: doubleValueTen,
                                                              deviceMotionAttitudePitch: doubleValueTen,
                                                              deviceMotionAttitudeRoll: doubleValueTen,
                                                              deviceMotionAttitudeRotationMatrix: nil,
                                                              deviceMotionAttitudeQuaternion: nil,
                                                              deviceMotionRotationRateX: doubleValueTen,
                                                              deviceMotionRotationRateY: doubleValueTen,
                                                              deviceMotionRotationRateZ: doubleValueTen,
                                                              deviceMotionGravityX: doubleValueTen,
                                                              deviceMotionGravityY: doubleValueTen,
                                                              deviceMotionGravityZ: doubleValueTen,
                                                              deviceMotionUserAccelerationX: doubleValueTen,
                                                              deviceMotionUserAccelerationY: doubleValueTen,
                                                              deviceMotionUserAccelerationZ: doubleValueTen,
                                                              deviceMotionMagneticFieldAccuracy: .high,
                                                              deviceMotionMagneticFieldX: doubleValueTen,
                                                              deviceMotionMagneticFieldY: doubleValueTen,
                                                              deviceMotionMagneticFieldZ: doubleValueTen,
                                                              magnetometerDataMagneticFieldX: doubleValueTen,
                                                              magnetometerDataMagneticFieldY: doubleValueTen,
                                                              magnetometerDataMagneticFieldZ: doubleValueTen,
                                                              accelerometerDataAccelerationX: doubleValueTen,
                                                              accelerometerDataAccelerationY: doubleValueTen,
                                                              accelerometerDataAccelerationZ: doubleValueTen,
                                                              gyroDataRotationRateX: doubleValueTen,
                                                              gyroDataRotationRateY: doubleValueTen,
                                                              gyroDataRotationRateZ: doubleValueTen)

fileprivate class MockMotionModality: MotionModality {
    fileprivate override var stimulus: MotionModalityModel {
        return mockMotionModalityModel
    }
}

fileprivate class MockAttitude: CMAttitude {
    fileprivate override var roll: Double {
        return doubleValueTen
    }
    fileprivate override var pitch: Double {
        return doubleValueTen
    }
    fileprivate override var yaw: Double {
        return doubleValueTen
    }
    fileprivate override var rotationMatrix: CMRotationMatrix {
        return CMRotationMatrix(m11: doubleValueTen,
                                m12: doubleValueTen,
                                m13: doubleValueTen,
                                m21: doubleValueTen,
                                m22: doubleValueTen,
                                m23: doubleValueTen,
                                m31: doubleValueTen,
                                m32: doubleValueTen,
                                m33: doubleValueTen)
    }
    fileprivate override var quaternion: CMQuaternion {
        return CMQuaternion(x: doubleValueTen, y: doubleValueTen, z: doubleValueTen, w: doubleValueTen)
    }
}

fileprivate class MockDeviceMotion: CMDeviceMotion {
    fileprivate override var attitude: CMAttitude {
        return MockAttitude()
    }
    fileprivate override var rotationRate: CMRotationRate {
        return CMRotationRate(x: doubleValueTen, y: doubleValueTen, z: doubleValueTen)
    }
    fileprivate override var gravity: CMAcceleration {
        return CMAcceleration(x: doubleValueTen, y: doubleValueTen, z: doubleValueTen)
    }
    fileprivate override var userAcceleration: CMAcceleration {
        return CMAcceleration(x: doubleValueTen, y: doubleValueTen, z: doubleValueTen)
    }
    fileprivate override var magneticField: CMCalibratedMagneticField {
        return CMCalibratedMagneticField(field: CMMagneticField(x: doubleValueTen, y: doubleValueTen, z: doubleValueTen),
                                         accuracy: .high)
    }
}

fileprivate class MockMagnetometerData: CMMagnetometerData {
    fileprivate override var magneticField: CMMagneticField {
        return CMMagneticField(x: doubleValueTen, y: doubleValueTen, z: doubleValueTen)
    }
}

fileprivate class MockAccelerometerData: CMAccelerometerData {
    fileprivate override var acceleration: CMAcceleration {
        return CMAcceleration(x: doubleValueTen, y: doubleValueTen, z: doubleValueTen)
    }
}

fileprivate class MockGyroData: CMGyroData {
    fileprivate override var rotationRate: CMRotationRate {
        return CMRotationRate(x: doubleValueTen, y: doubleValueTen, z: doubleValueTen)
    }
}

class MotionModalityTests: XCTestCase {

    func testMotionModality() {
        let mockMotionModality = MockMotionModality()
        mockMotionModality.startSensing()
        XCTAssertNotNil(mockMotionModality)
    }

    func testDeviceMotion() {
        let mockMotionModality = MotionModality()
        let mockDeviceMotion = MockDeviceMotion()

        mockMotionModality.senseDeviceMotion()
        mockMotionModality.updateHandler(deviceMotion: mockDeviceMotion, error: nil)

        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionAttitudeYaw, mockMotionModalityModel.deviceMotionAttitudeYaw)
        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionAttitudePitch, mockMotionModalityModel.deviceMotionAttitudePitch)
        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionAttitudeRoll, mockMotionModalityModel.deviceMotionAttitudeRoll)
        XCTAssertNotNil(mockMotionModality.stimulus.deviceMotionAttitudeRotationMatrix)
        XCTAssertNotNil(mockMotionModality.stimulus.deviceMotionAttitudeQuaternion)
        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionRotationRateX, mockMotionModalityModel.deviceMotionRotationRateX)
        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionRotationRateY, mockMotionModalityModel.deviceMotionRotationRateY)
        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionRotationRateZ, mockMotionModalityModel.deviceMotionRotationRateZ)
        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionGravityX, mockMotionModalityModel.deviceMotionGravityX)
        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionGravityY, mockMotionModalityModel.deviceMotionGravityY)
        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionGravityZ, mockMotionModalityModel.deviceMotionGravityZ)
        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionUserAccelerationX, mockMotionModalityModel.deviceMotionUserAccelerationX)
        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionUserAccelerationY, mockMotionModalityModel.deviceMotionUserAccelerationY)
        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionUserAccelerationZ, mockMotionModalityModel.deviceMotionUserAccelerationZ)
        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionMagneticFieldAccuracy, mockMotionModalityModel.deviceMotionMagneticFieldAccuracy)
        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionMagneticFieldX, mockMotionModalityModel.deviceMotionMagneticFieldX)
        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionMagneticFieldY, mockMotionModalityModel.deviceMotionMagneticFieldY)
        XCTAssertEqual(mockMotionModality.stimulus.deviceMotionMagneticFieldZ, mockMotionModalityModel.deviceMotionMagneticFieldZ)
    }

    func testMagnetometerData() {
        let mockMotionModality = MockMotionModality()
        let mockMagnetometerData = MockMagnetometerData()

        mockMotionModality.senseMagnetometerData()
        mockMotionModality.updateHandler(magnetometerData: mockMagnetometerData, error: nil)

        XCTAssertEqual(mockMotionModality.stimulus.magnetometerDataMagneticFieldX, mockMotionModalityModel.magnetometerDataMagneticFieldX)
        XCTAssertEqual(mockMotionModality.stimulus.magnetometerDataMagneticFieldY, mockMotionModalityModel.magnetometerDataMagneticFieldY)
        XCTAssertEqual(mockMotionModality.stimulus.magnetometerDataMagneticFieldZ, mockMotionModalityModel.magnetometerDataMagneticFieldZ)
    }

    func testAccelerometerData() {
        let mockMotionModality = MockMotionModality()
        let mockAccelerometerData = MockAccelerometerData()

        mockMotionModality.senseAccelerometerData()
        mockMotionModality.updateHandler(accelerometerData: mockAccelerometerData, error: nil)

        XCTAssertEqual(mockMotionModality.stimulus.accelerometerDataAccelerationX, mockMotionModalityModel.accelerometerDataAccelerationX)
        XCTAssertEqual(mockMotionModality.stimulus.accelerometerDataAccelerationY, mockMotionModalityModel.accelerometerDataAccelerationY)
        XCTAssertEqual(mockMotionModality.stimulus.accelerometerDataAccelerationZ, mockMotionModalityModel.accelerometerDataAccelerationZ)
    }

    func testGyroData() {
        let mockMotionModality = MockMotionModality()
        let mockGyroData = MockGyroData()

        mockMotionModality.senseGyroData()
        mockMotionModality.updateHandler(gyroData: mockGyroData, error: nil)

        XCTAssertEqual(mockMotionModality.stimulus.gyroDataRotationRateX, mockMotionModalityModel.gyroDataRotationRateX)
        XCTAssertEqual(mockMotionModality.stimulus.gyroDataRotationRateY, mockMotionModalityModel.gyroDataRotationRateY)
        XCTAssertEqual(mockMotionModality.stimulus.gyroDataRotationRateZ, mockMotionModalityModel.gyroDataRotationRateZ)
    }
}
