//
//  LocaleModality.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/8/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation

public class LocaleModality {
    public private(set) var stimulus = LocaleModalityModel(identifier: Locale.current.identifier,
                                                           languageCode: Locale.current.languageCode,
                                                           regionCode: Locale.current.regionCode,
                                                           scriptCode: Locale.current.scriptCode,
                                                           variantCode: Locale.current.variantCode,
                                                           exemplarCharacterSet: Locale.current.exemplarCharacterSet,
                                                           calendar: Locale.current.calendar,
                                                           collationIdentifier: Locale.current.collationIdentifier,
                                                           usesMetricSystem: Locale.current.usesMetricSystem,
                                                           decimalSeparator: Locale.current.decimalSeparator,
                                                           groupingSeparator: Locale.current.groupingSeparator,
                                                           currencySymbol: Locale.current.currencySymbol,
                                                           currencyCode: Locale.current.currencyCode,
                                                           collatorIdentifier: Locale.current.collatorIdentifier,
                                                           quotationBeginDelimiter: Locale.current.quotationBeginDelimiter,
                                                           quotationEndDelimiter: Locale.current.quotationEndDelimiter,
                                                           alternateQuotationBeginDelimiter: Locale.current.alternateQuotationBeginDelimiter,
                                                           alternateQuotationEndDelimiter: Locale.current.alternateQuotationEndDelimiter)
}
