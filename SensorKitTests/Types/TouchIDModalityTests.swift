//
//  TouchIDModalityTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/11/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
import LocalAuthentication

@testable import SensorKit

fileprivate let mockTouchIDModel = TouchIDModalityModel(authenticated: false,
                                            authenticationError: LAError.touchIDNotAvailable)

fileprivate class MockTouchIDModality: TouchIDModality {
    fileprivate override var stimulus: TouchIDModalityModel {
        return mockTouchIDModel
    }
}

class TouchIDModalityTests: XCTestCase {
    func testTouchIDModality() {
        let mockTouchIDModality = MockTouchIDModality()

        XCTAssertEqual(mockTouchIDModality.stimulus.authenticated, mockTouchIDModel.authenticated)
        XCTAssertEqual(mockTouchIDModality.stimulus.authenticationError, LAError.touchIDNotAvailable)
    }

    func testUpdateNonErrorStatus() {
        let mockTouchIDModality = TouchIDModality()

        mockTouchIDModality.handleStimulusUpdate(success: true, error: nil)

        XCTAssertTrue(mockTouchIDModality.stimulus.authenticated!)
        XCTAssertEqual(mockTouchIDModality.stimulus.authenticationError, LAError.touchIDNotEnrolled)
    }

    func testUpdateWithErrorStatus() {
        let mockTouchIDModality = TouchIDModality()

        let passcodeNotSetError = NSError(domain: LAError.passcodeNotSet.description,
                                          code: LAError.passcodeNotSet.rawValue,
                                          userInfo: nil)
        mockTouchIDModality.handleStimulusUpdate(success: false, error: passcodeNotSetError)

        XCTAssertTrue(!mockTouchIDModality.stimulus.authenticated!)
        XCTAssertEqual(mockTouchIDModality.stimulus.authenticationError, LAError.passcodeNotSet)
    }
}
