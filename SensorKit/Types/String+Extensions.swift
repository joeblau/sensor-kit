//
//  String+Extensions.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/2/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation

public extension String {
    var pad: String {
        return self.padding(toLength: 20, withPad: " ", startingAt: 0)
    }
}
