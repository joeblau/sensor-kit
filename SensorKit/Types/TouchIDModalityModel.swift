//
//  TouchIDModalityModel.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/11/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import LocalAuthentication

public struct TouchIDModalityModel: ModalityModel {
    var authenticated: Bool?
    var authenticationError: LAError.Code?
}

extension LAError.Code: CustomStringConvertible {
    public var description: String {
        switch self {
        case .appCancel: return "App Cancel"
        case .authenticationFailed: return "Authentication Failed"
        case .invalidContext: return "Invalid Context"
        case .passcodeNotSet: return "Passcode Not Set"
        case .systemCancel: return "System Cancel"
        case .userCancel: return "User Cancel"
        case .userFallback: return "User Fallback"
        case .notInteractive: return "Not Interactive"
        case .touchIDLockout, .biometryLockout: return "Biometry Lockout"
        case .touchIDNotAvailable, .biometryNotAvailable: return "Biometry Not Available"
        case .touchIDNotEnrolled, .biometryNotEnrolled: return "Biometry Not Enrolled"
        }
    }
}
