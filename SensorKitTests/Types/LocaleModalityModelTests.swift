//
//  LocaleModalityModelTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/8/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest

@testable import SensorKit

class LocaleModalityModelTests: XCTestCase {

    var mockLocaleModalityModel = LocaleModalityModel(identifier: nil,
                                                      languageCode: nil,
                                                      regionCode: nil,
                                                      scriptCode: nil,
                                                      variantCode: nil,
                                                      exemplarCharacterSet: nil,
                                                      calendar: nil,
                                                      collationIdentifier: nil,
                                                      usesMetricSystem: nil,
                                                      decimalSeparator: nil,
                                                      groupingSeparator: nil,
                                                      currencySymbol: nil,
                                                      currencyCode: nil,
                                                      collatorIdentifier: nil,
                                                      quotationBeginDelimiter: nil,
                                                      quotationEndDelimiter: nil,
                                                      alternateQuotationBeginDelimiter: nil,
                                                      alternateQuotationEndDelimiter: nil)

    func testSensorDescription() {
        XCTAssertEqual(mockLocaleModalityModel.count, mockLocaleModalityModel.descriptionLineCount)
    }

    func testSensorPropertyCount() {
        XCTAssertEqual(mockLocaleModalityModel.count, 18)
    }
}
