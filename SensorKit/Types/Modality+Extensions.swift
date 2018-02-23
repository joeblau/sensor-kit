//
//  Modality+Extensions.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/3/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation

protocol ModalityModel: CustomStringConvertible {
    var count: Int { get }
}

extension ModalityModel {
    public var description: String {
        return Mirror(reflecting: self)
            .children
            .flatMap { "\($0.label?.capitalized.pad ?? "-".pad) \($0.value)" }
            .reduce("Modality") { accumulator, propertyKeyValue in "\(accumulator)\n\(propertyKeyValue)" }
    }

    public var count: Int {
        return Mirror(reflecting: self)
            .children
            .map { ($0.value as? ModalityModel)?.count }
            .reduce(0) { accumulator, propertyCount in
                let count = propertyCount ?? 0
                return 1 + accumulator + count
            }
    }

    public var descriptionLineCount: Int {
        return Int(Mirror(reflecting: self).children.count)
    }
}
