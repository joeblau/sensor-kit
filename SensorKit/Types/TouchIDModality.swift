//
//  TouchIDModality.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/11/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import LocalAuthentication

private class SensorKitContext: LAContext {
    override func canEvaluatePolicy(_ policy: LAPolicy, error: NSErrorPointer) -> Bool {
        return super.canEvaluatePolicy(policy, error: error) || ProcessInfo.runningTests
    }
}

public class TouchIDModality {
    private let context = SensorKitContext()
    private let localAuthenticationReasonString = "Access Biometric Data"

    public private(set) var stimulus = TouchIDModalityModel(authenticated: false,
                                                            authenticationError: nil)
    internal var availabilityError: NSError?

    init() {
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &availabilityError) {
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: localAuthenticationReasonString, reply: handleStimulusUpdate)
        }
        if let availabilityError = availabilityError {
            stimulus.authenticationError = LAError(_nsError: availabilityError).code
        }
    }

    internal func handleStimulusUpdate(success: Bool, error: Error?) {
        self.stimulus.authenticated = false
        if let error = error as? NSError {
            self.stimulus.authenticationError = LAError(_nsError: error).code
        } else if success {
            self.stimulus.authenticated = true
        }
    }
}
