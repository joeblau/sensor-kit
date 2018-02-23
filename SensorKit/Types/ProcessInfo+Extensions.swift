//
//  ProcessInfo+Extensions.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/7/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation

extension ProcessInfo {
    static var runningTests: Bool {
        return !(self.processInfo.environment["XCTestConfigurationFilePath"] == nil)
    }
}
