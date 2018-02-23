//
//  AstronomyModality.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/5/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import CoreLocation
import AstronomyKit

public class AstronomyModality {
    public private(set) var stimulus = AstronomyModalityModel(lunarRise: nil,
                                                              lunarTransit: Date.init(timeIntervalSince1970: 0),
                                                              lunarSet: nil,
                                                              solarRise: nil,
                                                              solarTransit: Date.init(timeIntervalSince1970: 0),
                                                              solarSet: nil)

    public func updateStimulus(date: Date, location: CLLocationCoordinate2D) {
        stimulus.lunarRise = AstronomicalCalculation.lunarRiseDate(with: date, location: location)
        stimulus.lunarTransit = AstronomicalCalculation.lunarTransitDate(with: date, location: location)
        stimulus.lunarSet = AstronomicalCalculation.lunarSetDate(with: date, location: location)
        stimulus.solarRise = AstronomicalCalculation.solarRiseDate(with: date, location: location)
        stimulus.solarTransit = AstronomicalCalculation.solarTransitDate(with: date, location: location)
        stimulus.solarSet = AstronomicalCalculation.solarSetDate(with: date, location: location)
    }
}
