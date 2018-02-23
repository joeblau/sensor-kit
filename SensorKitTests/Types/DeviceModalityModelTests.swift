//
//  DeviceModalityModelTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/7/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest

@testable import SensorKit

class DeviceModalityModelTests: XCTestCase {

    let mockDeviceModalityModel = DeviceModalityModel(name: "abc",
                                                      model: "abc",
                                                      localizedModel: "abc",
                                                      systemName: "abc",
                                                      systemVersion: "abc",
                                                      orientation: .unknown,
                                                      interfaceIdiom: .unspecified)

    func testSensorDescription() {
        XCTAssertEqual(mockDeviceModalityModel.count, mockDeviceModalityModel.descriptionLineCount)
    }

    func testSensorPropertyCount() {
        XCTAssertEqual(mockDeviceModalityModel.count, 7)
    }

    func testUIDeviceOrientationStringFaceDown() {
        let deviceInterfaceIdiomFaceDown = DeviceModalityModel(name: nil,
                                                               model: nil,
                                                               localizedModel: nil,
                                                               systemName: nil,
                                                               systemVersion: nil,
                                                               orientation: .faceDown,
                                                               interfaceIdiom: .unspecified)
        XCTAssertEqual(deviceInterfaceIdiomFaceDown.orientation.description, "Face Down")
    }

    func testUIDeviceOrientationStringFaceUp() {
        let deviceInterfaceIdiomFaceUp = DeviceModalityModel(name: nil,
                                                             model: nil,
                                                             localizedModel: nil,
                                                             systemName: nil,
                                                             systemVersion: nil,
                                                             orientation: .faceUp,
                                                             interfaceIdiom: .unspecified)
        XCTAssertEqual(deviceInterfaceIdiomFaceUp.orientation.description, "Face Up")
    }

    func testUIDeviceOrientationStringLandscapeLeft() {
        let deviceInterfaceIdiomLandscapeLeft = DeviceModalityModel(name: nil,
                                                                    model: nil,
                                                                    localizedModel: nil,
                                                                    systemName: nil,
                                                                    systemVersion: nil,
                                                                    orientation: .landscapeLeft,
                                                                    interfaceIdiom: .unspecified)
        XCTAssertEqual(deviceInterfaceIdiomLandscapeLeft.orientation.description, "Landscape Left")
    }

    func testUIDeviceOrientationStringLandscapeRight() {
        let deviceInterfaceIdiomLandscapeRight = DeviceModalityModel(name: nil,
                                                                     model: nil,
                                                                     localizedModel: nil,
                                                                     systemName: nil,
                                                                     systemVersion: nil,
                                                                     orientation: .landscapeRight,
                                                                     interfaceIdiom: .unspecified)
        XCTAssertEqual(deviceInterfaceIdiomLandscapeRight.orientation.description, "Landscape Right")
    }

    func testUIDeviceOrientationStringPortrait() {
        let deviceInterfaceIdiomPortrait = DeviceModalityModel(name: nil,
                                                               model: nil,
                                                               localizedModel: nil,
                                                               systemName: nil,
                                                               systemVersion: nil,
                                                               orientation: .portrait,
                                                               interfaceIdiom: .unspecified)
        XCTAssertEqual(deviceInterfaceIdiomPortrait.orientation.description, "Portrait")
    }

    func testUIDeviceOrientationStringPortraitUpsideDown() {
        let deviceInterfaceIdiomPortraitUpsideDown = DeviceModalityModel(name: nil,
                                                                         model: nil,
                                                                         localizedModel: nil,
                                                                         systemName: nil,
                                                                         systemVersion: nil,
                                                                         orientation: .portraitUpsideDown,
                                                                         interfaceIdiom: .unspecified)
        XCTAssertEqual(deviceInterfaceIdiomPortraitUpsideDown.orientation.description, "Portrait Upside Down")
    }

    func testUIDeviceOrientationStringUnknown() {
        let deviceInterfaceIdiomUnknown = DeviceModalityModel(name: nil,
                                                              model: nil,
                                                              localizedModel: nil,
                                                              systemName: nil,
                                                              systemVersion: nil,
                                                              orientation: .unknown,
                                                              interfaceIdiom: .unspecified)
        XCTAssertEqual(deviceInterfaceIdiomUnknown.orientation.description, "Unknown")
    }

    func testUIUserInterfaceIdiomStrings() {
        let deviceInterfaceIdiomCarPlay = DeviceModalityModel(name: nil,
                                                              model: nil,
                                                              localizedModel: nil,
                                                              systemName: nil,
                                                              systemVersion: nil,
                                                              orientation: .unknown,
                                                              interfaceIdiom: .carPlay)
        let deviceInterfaceIdiomPad = DeviceModalityModel(name: nil,
                                                          model: nil,
                                                          localizedModel: nil,
                                                          systemName: nil,
                                                          systemVersion: nil,
                                                          orientation: .unknown,
                                                          interfaceIdiom: .pad)
        let deviceInterfaceIdiomPhone = DeviceModalityModel(name: nil,
                                                            model: nil,
                                                            localizedModel: nil,
                                                            systemName: nil,
                                                            systemVersion: nil,
                                                            orientation: .unknown,
                                                            interfaceIdiom: .phone)
        let deviceInterfaceIdiomTV = DeviceModalityModel(name: nil,
                                                         model: nil,
                                                         localizedModel: nil,
                                                         systemName: nil,
                                                         systemVersion: nil,
                                                         orientation: .unknown,
                                                         interfaceIdiom: .tv)
        let deviceInterfaceIdiomUnspecified = DeviceModalityModel(name: nil,
                                                                  model: nil,
                                                                  localizedModel: nil,
                                                                  systemName: nil,
                                                                  systemVersion: nil,
                                                                  orientation: .unknown,
                                                                  interfaceIdiom: .unspecified)

        XCTAssertEqual("\(deviceInterfaceIdiomCarPlay.interfaceIdiom)", "Car Play")
        XCTAssertEqual("\(deviceInterfaceIdiomPad.interfaceIdiom)", "iPad")
        XCTAssertEqual("\(deviceInterfaceIdiomPhone.interfaceIdiom)", "iPhone")
        XCTAssertEqual("\(deviceInterfaceIdiomTV.interfaceIdiom)", "TV")
        XCTAssertEqual("\(deviceInterfaceIdiomUnspecified.interfaceIdiom)", "Unspecified")
    }
}
