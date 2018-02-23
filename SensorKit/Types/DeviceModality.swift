//
//  DeviceModality.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/7/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import UIKit

public class DeviceModality {
    public private(set) var stimulus = DeviceModalityModel(name: UIDevice.current.name,
                                                           model: UIDevice.current.model,
                                                           localizedModel: UIDevice.current.localizedModel,
                                                           systemName: UIDevice.current.systemName,
                                                           systemVersion: UIDevice.current.systemVersion,
                                                           orientation: UIDevice.current.orientation,
                                                           interfaceIdiom: UIDevice.current.userInterfaceIdiom)
}
