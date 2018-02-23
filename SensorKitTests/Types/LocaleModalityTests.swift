//
//  LocaleModalityTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/8/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest

@testable import SensorKit

fileprivate let mockLocaleModalityModel = LocaleModalityModel(identifier: "abc",
                                                  languageCode: "def",
                                                  regionCode: "ghi",
                                                  scriptCode: "jkl",
                                                  variantCode: "mno",
                                                  exemplarCharacterSet: CharacterSet(charactersIn: "pqr"),
                                                  calendar: nil,
                                                  collationIdentifier: "stu",
                                                  usesMetricSystem: true,
                                                  decimalSeparator: "vwx",
                                                  groupingSeparator: "yza",
                                                  currencySymbol: "bcd",
                                                  currencyCode: "efg",
                                                  collatorIdentifier: "hij",
                                                  quotationBeginDelimiter: "klm",
                                                  quotationEndDelimiter: "nop",
                                                  alternateQuotationBeginDelimiter: "qrs",
                                                  alternateQuotationEndDelimiter: "tuv")

fileprivate class MockLocaleModality: LocaleModality {
    fileprivate override var stimulus: LocaleModalityModel {
        return mockLocaleModalityModel
    }
}

class LocaleModalityTests: XCTestCase {

    func testLocaleModality() {
        let mockHealthKitModality = MockLocaleModality()

        XCTAssertEqual(mockHealthKitModality.stimulus.identifier, mockLocaleModalityModel.identifier)
        XCTAssertEqual(mockHealthKitModality.stimulus.languageCode, mockLocaleModalityModel.languageCode)
        XCTAssertEqual(mockHealthKitModality.stimulus.regionCode, mockLocaleModalityModel.regionCode)
        XCTAssertEqual(mockHealthKitModality.stimulus.scriptCode, mockLocaleModalityModel.scriptCode)
        XCTAssertEqual(mockHealthKitModality.stimulus.variantCode, mockLocaleModalityModel.variantCode)
        XCTAssertEqual(mockHealthKitModality.stimulus.exemplarCharacterSet, mockLocaleModalityModel.exemplarCharacterSet)
        XCTAssertEqual(mockHealthKitModality.stimulus.calendar, mockLocaleModalityModel.calendar)
        XCTAssertEqual(mockHealthKitModality.stimulus.collationIdentifier, mockLocaleModalityModel.collationIdentifier)
        XCTAssertEqual(mockHealthKitModality.stimulus.usesMetricSystem, mockLocaleModalityModel.usesMetricSystem)
        XCTAssertEqual(mockHealthKitModality.stimulus.decimalSeparator, mockLocaleModalityModel.decimalSeparator)
        XCTAssertEqual(mockHealthKitModality.stimulus.groupingSeparator, mockLocaleModalityModel.groupingSeparator)
        XCTAssertEqual(mockHealthKitModality.stimulus.currencySymbol, mockLocaleModalityModel.currencySymbol)
        XCTAssertEqual(mockHealthKitModality.stimulus.currencyCode, mockLocaleModalityModel.currencyCode)
        XCTAssertEqual(mockHealthKitModality.stimulus.collatorIdentifier, mockLocaleModalityModel.collatorIdentifier)
        XCTAssertEqual(mockHealthKitModality.stimulus.quotationBeginDelimiter, mockLocaleModalityModel.quotationBeginDelimiter)
        XCTAssertEqual(mockHealthKitModality.stimulus.quotationEndDelimiter, mockLocaleModalityModel.quotationEndDelimiter)
        XCTAssertEqual(mockHealthKitModality.stimulus.alternateQuotationBeginDelimiter, mockLocaleModalityModel.alternateQuotationBeginDelimiter)
        XCTAssertEqual(mockHealthKitModality.stimulus.alternateQuotationEndDelimiter, mockLocaleModalityModel.alternateQuotationEndDelimiter)
    }

}
