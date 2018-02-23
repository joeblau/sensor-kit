//
//  MotionModality.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/14/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import CoreMotion

private class SensorKitMotionManager: CMMotionManager {
    func shouldSenseDeviceMotion() -> Bool {
        return (!self.isDeviceMotionActive && self.isDeviceMotionAvailable) || ProcessInfo.runningTests
    }

    func shouldSenseMagnetometerData() -> Bool {
        return (!self.isMagnetometerActive && self.isMagnetometerAvailable) || ProcessInfo.runningTests
    }

    func shouldSenseAccelerometerData() -> Bool {
        return (!self.isAccelerometerActive && self.isAccelerometerAvailable) || ProcessInfo.runningTests
    }

    func shouldSenseGyroData() -> Bool {
        return (!self.isGyroActive && self.isGyroAvailable) || ProcessInfo.runningTests
    }
}

public class MotionModality {
    fileprivate private(set) var motionManager = SensorKitMotionManager()
    private let currentQueue = OperationQueue.current!
    public private(set) var stimulus = MotionModalityModel(deviceMotionAttitudeYaw: nil,
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

    init(updateInterval: TimeInterval = 0.05) {
        motionManager.deviceMotionUpdateInterval = updateInterval
        startSensing()
    }

    deinit {
        motionManager.stopDeviceMotionUpdates()
        motionManager.stopMagnetometerUpdates()
        motionManager.stopAccelerometerUpdates()
        motionManager.stopGyroUpdates()
    }

    // MARK: - Internal

    internal func startSensing() {
        if motionManager.shouldSenseDeviceMotion() {
            senseDeviceMotion()
        }
        if motionManager.shouldSenseMagnetometerData() {
            senseMagnetometerData()
        }
        if motionManager.shouldSenseAccelerometerData() {
            senseAccelerometerData()
        }
        if motionManager.shouldSenseGyroData() {
            senseGyroData()
        }
    }

    internal func senseDeviceMotion() {
        motionManager.startDeviceMotionUpdates(using: .xArbitraryCorrectedZVertical,
                                               to: currentQueue,
                                               withHandler: updateHandler)
    }

    internal func senseMagnetometerData() {
        motionManager.startMagnetometerUpdates(to: currentQueue,
                                               withHandler: updateHandler)
    }

    internal func senseAccelerometerData() {
        motionManager.startAccelerometerUpdates(to: currentQueue,
                                                withHandler: updateHandler)
    }

    internal func senseGyroData() {
        motionManager.startGyroUpdates(to: currentQueue,
                                       withHandler: updateHandler)
    }

    internal func updateHandler(deviceMotion: CMDeviceMotion?, error: Error?) {
        if let deviceMotion = deviceMotion {
            stimulus.deviceMotionAttitudeYaw = deviceMotion.attitude.yaw
            stimulus.deviceMotionAttitudePitch = deviceMotion.attitude.pitch
            stimulus.deviceMotionAttitudeRoll = deviceMotion.attitude.roll
            stimulus.deviceMotionAttitudeRotationMatrix = deviceMotion.attitude.rotationMatrix
            stimulus.deviceMotionAttitudeQuaternion = deviceMotion.attitude.quaternion

            stimulus.deviceMotionRotationRateX = deviceMotion.rotationRate.x
            stimulus.deviceMotionRotationRateY = deviceMotion.rotationRate.y
            stimulus.deviceMotionRotationRateZ = deviceMotion.rotationRate.z

            stimulus.deviceMotionGravityX = deviceMotion.gravity.x
            stimulus.deviceMotionGravityY = deviceMotion.gravity.y
            stimulus.deviceMotionGravityZ = deviceMotion.gravity.z

            stimulus.deviceMotionUserAccelerationX = deviceMotion.userAcceleration.x
            stimulus.deviceMotionUserAccelerationY = deviceMotion.userAcceleration.y
            stimulus.deviceMotionUserAccelerationZ = deviceMotion.userAcceleration.z

            stimulus.deviceMotionMagneticFieldAccuracy = deviceMotion.magneticField.accuracy
            stimulus.deviceMotionMagneticFieldX = deviceMotion.magneticField.field.x
            stimulus.deviceMotionMagneticFieldY = deviceMotion.magneticField.field.y
            stimulus.deviceMotionMagneticFieldZ = deviceMotion.magneticField.field.z
        }
    }

    internal func updateHandler(magnetometerData: CMMagnetometerData?, error: Error?) {
        if let magnetometerData = magnetometerData {
            stimulus.magnetometerDataMagneticFieldX = magnetometerData.magneticField.x
            stimulus.magnetometerDataMagneticFieldY = magnetometerData.magneticField.y
            stimulus.magnetometerDataMagneticFieldZ = magnetometerData.magneticField.z
        }
    }

    internal func updateHandler(accelerometerData: CMAccelerometerData?, error: Error?) {
        if let accelerometerData = accelerometerData {
            stimulus.accelerometerDataAccelerationX = accelerometerData.acceleration.x
            stimulus.accelerometerDataAccelerationY = accelerometerData.acceleration.y
            stimulus.accelerometerDataAccelerationZ = accelerometerData.acceleration.z
        }
    }

    internal func updateHandler(gyroData: CMGyroData?, error: Error?) {
        if let gyroData = gyroData {
            stimulus.gyroDataRotationRateX = gyroData.rotationRate.x
            stimulus.gyroDataRotationRateY = gyroData.rotationRate.y
            stimulus.gyroDataRotationRateZ = gyroData.rotationRate.z
        }
    }
}
