//
//  HealthKitModalityTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/7/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
import HealthKit

@testable import SensorKit

fileprivate let mockHealthKitModalityModel = HealthKitModalityModel(bodyMassIndex: nil,
                                                                    bodyFatPercentage: nil,
                                                                    height: nil,
                                                                    bodyMass: nil,
                                                                    leanBodyMass: nil,
                                                                    stepCount: nil,
                                                                    distanceWalkingRunning: nil,
                                                                    distanceCycling: nil,
                                                                    distanceWheelchair: nil,
                                                                    basalEnergyBurned: nil,
                                                                    activeEnergyBurned: nil,
                                                                    flightsClimbed: nil,
                                                                    nikeFuel: nil,
                                                                    appleExerciseTime: nil,
                                                                    pushCount: nil,
                                                                    heartRate: nil,
                                                                    bodyTemperature: nil,
                                                                    basalBodyTemperature: nil,
                                                                    bloodPressureSystolic: nil,
                                                                    bloodPressureDiastolic: nil,
                                                                    respiratoryRate: nil,
                                                                    oxygenSaturation: nil,
                                                                    peripheralPerfusionIndex: nil,
                                                                    bloodGlucose: nil,
                                                                    numberOfTimesFallen: nil,
                                                                    electrodermalActivity: nil,
                                                                    inhalerUsage: nil,
                                                                    bloodAlcoholContent: nil,
                                                                    forcedVitalCapacity: nil,
                                                                    forcedExpiratoryVolume1: nil,
                                                                    peakExpiratoryFlowRate: nil,
                                                                    dietaryBiotin: nil,
                                                                    dietaryCaffeine: nil,
                                                                    dietaryCalcium: nil,
                                                                    dietaryCarbohydrates: nil,
                                                                    dietaryChloride: nil,
                                                                    dietaryCholesterol: nil,
                                                                    dietaryChromium: nil,
                                                                    dietaryCopper: nil,
                                                                    dietaryEnergyConsumed: nil,
                                                                    dietaryFatMonounsaturated: nil,
                                                                    dietaryFatPolyunsaturated: nil,
                                                                    dietaryFatSaturated: nil,
                                                                    dietaryFatTotal: nil,
                                                                    dietaryFiber: nil,
                                                                    dietaryFolate: nil,
                                                                    dietaryIodine: nil,
                                                                    dietaryIron: nil,
                                                                    dietaryMagnesium: nil,
                                                                    dietaryManganese: nil,
                                                                    dietaryMolybdenum: nil,
                                                                    dietaryNiacin: nil,
                                                                    dietaryPantothenicAcid: nil,
                                                                    dietaryPhosphorus: nil,
                                                                    dietaryPotassium: nil,
                                                                    dietaryProtein: nil,
                                                                    dietaryRiboflavin: nil,
                                                                    dietarySelenium: nil,
                                                                    dietarySodium: nil,
                                                                    dietarySugar: nil,
                                                                    dietaryThiamin: nil,
                                                                    dietaryVitaminA: nil,
                                                                    dietaryVitaminB12: nil,
                                                                    dietaryVitaminB6: nil,
                                                                    dietaryVitaminC: nil,
                                                                    dietaryVitaminD: nil,
                                                                    dietaryVitaminE: nil,
                                                                    dietaryVitaminK: nil,
                                                                    dietaryWater: nil,
                                                                    dietaryZinc: nil,
                                                                    uvExposure: nil,
                                                                    sleepAnalysis: nil,
                                                                    appleStandHour: nil,
                                                                    cervicalMucusQuality: nil,
                                                                    ovulationTestResult: nil,
                                                                    menstrualFlow: nil,
                                                                    intermenstrualBleeding: nil,
                                                                    sexualActivity: nil,
                                                                    mindfulSession: nil,
                                                                    biologicalSex: nil,
                                                                    bloodType: nil,
                                                                    dateOfBirth: nil,
                                                                    fitzpatrickSkinType: nil,
                                                                    wheelchairUse: nil,
                                                                    workout: nil)

fileprivate class MockHealthKitModality: HealthKitModality {
    fileprivate override var stimulus: HealthKitModalityModel {
        return mockHealthKitModalityModel
    }

    fileprivate override func authorized(sampleType: HKSampleType) -> Bool {
        _ = super.authorized(sampleType: sampleType)
        return true
    }
}

class HealthKitModalityTests: XCTestCase {
    func testHealthKitModality() {
        let mockHealthKitModality = MockHealthKitModality()
        mockHealthKitModality.updateStimulus()

        XCTAssertEqual(mockHealthKitModality.stimulus.biologicalSex, mockHealthKitModalityModel.biologicalSex)
        XCTAssertEqual(mockHealthKitModality.stimulus.bloodType, mockHealthKitModalityModel.bloodType)
        XCTAssertEqual(mockHealthKitModality.stimulus.dateOfBirth, mockHealthKitModalityModel.dateOfBirth)
        XCTAssertEqual(mockHealthKitModality.stimulus.fitzpatrickSkinType, mockHealthKitModalityModel.fitzpatrickSkinType)
        XCTAssertEqual(mockHealthKitModality.stimulus.wheelchairUse, mockHealthKitModalityModel.wheelchairUse)
    }

    func testPopulatingStimulus() {
        let mockHealthKitModality = HealthKitModality()

        let quantityType = HKSampleType.quantityType(forIdentifier: HKQuantityTypeIdentifier.activeEnergyBurned)!
        let quantityQuantity = HKQuantity(unit: HKUnit.calorie(), doubleValue: 100)
        let quantitySample = HKQuantitySample(type: quantityType,
                                              quantity: quantityQuantity,
                                              start: Date.distantPast,
                                              end: Date())
        mockHealthKitModality.populateStimulus(samples: [quantitySample])

        XCTAssertEqual(mockHealthKitModality.stimulus.activeEnergyBurned, quantityQuantity)

        let categoryType = HKSampleType.categoryType(forIdentifier: HKCategoryTypeIdentifier.appleStandHour)!
        let categoryValue = 1
        let categorySample = HKCategorySample(type: categoryType,
                                              value: categoryValue,
                                              start: Date.distantPast,
                                              end: Date())
        mockHealthKitModality.populateStimulus(samples: [categorySample])

        XCTAssertEqual(mockHealthKitModality.stimulus.appleStandHour?.rawValue, categoryValue)
    }

    func testAuthorizationCompletion() {
        let mockHealthKitModality = MockHealthKitModality()
        mockHealthKitModality.requestAuthorizationCompletion(success: true, error: nil)
        XCTAssertNotNil(mockHealthKitModality)
    }
}
