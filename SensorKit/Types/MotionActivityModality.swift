//
//  MotionActivityModality.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/13/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import CoreMotion

public class MotionActivityModality: UpdateStimulus {
    private let motionActivityManager = CMMotionActivityManager()
    private let currentQueue = OperationQueue.current!
    public private(set) var stimulus = MotionActivityModalityModel(confidence: .low,
                                                                   startDate: nil,
                                                                   unknown: nil,
                                                                   stationary: nil,
                                                                   walking: nil,
                                                                   running: nil,
                                                                   automotive: nil,
                                                                   cycling: nil)

    // MARK: - UpdateStimulus

    public func updateStimulus() {
        motionActivityManager.startActivityUpdates(to: currentQueue, withHandler: coreMotionActivityHandler)
    }

    // MARK: - Internal

    internal func coreMotionActivityHandler(activity: CMMotionActivity?) {
        self.motionActivityManager.stopActivityUpdates()
        self.updateActivitiy(activity: activity)
    }

    internal func updateActivitiy(activity: CMMotionActivity?) {
        if let activity = activity {
            stimulus.startDate = activity.startDate
            stimulus.confidence = activity.confidence
            stimulus.startDate = activity.startDate
            stimulus.stationary = activity.stationary
            stimulus.walking = activity.walking
            stimulus.running = activity.running
            stimulus.automotive = activity.automotive
            stimulus.cycling = activity.cycling
            stimulus.unknown = activity.unknown
        }
    }
}
