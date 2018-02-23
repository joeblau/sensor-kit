//
//  LocaleModalityModel.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/8/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation

// codebeat:disable[TOO_MANY_IVARS]
public struct LocaleModalityModel: ModalityModel {
    var identifier: String?
    var languageCode: String?
    var regionCode: String?
    var scriptCode: String?
    var variantCode: String?
    var exemplarCharacterSet: CharacterSet?
    var calendar: Calendar?
    var collationIdentifier: String?
    var usesMetricSystem: Bool?
    var decimalSeparator: String?
    var groupingSeparator: String?
    var currencySymbol: String?
    var currencyCode: String?
    var collatorIdentifier: String?
    var quotationBeginDelimiter: String?
    var quotationEndDelimiter: String?
    var alternateQuotationBeginDelimiter: String?
    var alternateQuotationEndDelimiter: String?
}
// codebeat:enable[TOO_MANY_IVARS]
