//
//  TouchIDModalityModelTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/11/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest

@testable import SensorKit

fileprivate let mockTimeProximityModel = TouchIDModalityModel(authenticated: false,
                                                              authenticationError: nil)

class TouchIDModalityModelTests: XCTestCase {
    func testSensorDescription() {
        XCTAssertEqual(mockTimeProximityModel.count, mockTimeProximityModel.descriptionLineCount)
    }

    func testSensorPropertyCount() {
        XCTAssertEqual(mockTimeProximityModel.count, 2)
    }

    func testLAErrorCodeStrings() {
        let testAppCancel = TouchIDModalityModel(authenticated: false,
                                                 authenticationError: .appCancel)
        let testAuthenticationFailed = TouchIDModalityModel(authenticated: false,
                                                            authenticationError: .authenticationFailed)
        let testInvalidContext = TouchIDModalityModel(authenticated: false,
                                                      authenticationError: .invalidContext)
        let testPasscodeNotSet = TouchIDModalityModel(authenticated: false,
                                                      authenticationError: .passcodeNotSet)
        let testSystemCancel = TouchIDModalityModel(authenticated: false,
                                                    authenticationError: .systemCancel)
        let testBiometryLockout = TouchIDModalityModel(authenticated: false,
                                                      authenticationError: .biometryLockout)
        let testBiometryNotAvailable = TouchIDModalityModel(authenticated: false,
                                                           authenticationError: .biometryNotAvailable)
        let testBiometryNotEnrolled = TouchIDModalityModel(authenticated: false,
                                                          authenticationError: .biometryNotEnrolled)
        let testUserCancel = TouchIDModalityModel(authenticated: false,
                                                  authenticationError: .userCancel)
        let testUserFallback = TouchIDModalityModel(authenticated: false,
                                                    authenticationError: .userFallback)

        XCTAssertEqual("\(testAppCancel.authenticationError!)", "App Cancel")
        XCTAssertEqual("\(testAuthenticationFailed.authenticationError!)", "Authentication Failed")
        XCTAssertEqual("\(testInvalidContext.authenticationError!)", "Invalid Context")
        XCTAssertEqual("\(testPasscodeNotSet.authenticationError!)", "Passcode Not Set")
        XCTAssertEqual("\(testSystemCancel.authenticationError!)", "System Cancel")
        XCTAssertEqual("\(testBiometryLockout.authenticationError!)", "Biometry Lockout")
        XCTAssertEqual("\(testBiometryNotAvailable.authenticationError!)", "Biometry Not Available")
        XCTAssertEqual("\(testBiometryNotEnrolled.authenticationError!)", "Biometry Not Enrolled")
        XCTAssertEqual("\(testUserCancel.authenticationError!)", "User Cancel")
        XCTAssertEqual("\(testUserFallback.authenticationError!)", "User Fallback")
    }
}
