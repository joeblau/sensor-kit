//
//  HealthKitModalityModelTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/7/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
import HealthKit

@testable import SensorKit

class HealthKitModalityModelTests: XCTestCase {
    var mockHealthKitModalityModel = HealthKitModalityModel(bodyMassIndex: nil,
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

    func testSensorDescription() {
        XCTAssertEqual(mockHealthKitModalityModel.count, mockHealthKitModalityModel.descriptionLineCount)
    }

    func testSensorPropertyCount() {
        XCTAssertEqual(mockHealthKitModalityModel.count, 85)
    }

    // swiftlint:disable:next function_body_length
    func testQuantityExtension() {
        let mockQuantity = HKQuantity(unit: HKUnit.calorie(), doubleValue: 100)

        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.bodyMassIndex.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.bodyFatPercentage.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.height.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.bodyMass.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.leanBodyMass.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.stepCount.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.distanceWalkingRunning.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.distanceCycling.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.distanceWheelchair.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.basalEnergyBurned.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.activeEnergyBurned.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.flightsClimbed.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.nikeFuel.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.appleExerciseTime.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.pushCount.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.heartRate.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.bodyTemperature.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.basalBodyTemperature.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.bloodPressureSystolic.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.bloodPressureDiastolic.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.respiratoryRate.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.oxygenSaturation.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.peripheralPerfusionIndex.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.bloodGlucose.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.numberOfTimesFallen.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.electrodermalActivity.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.inhalerUsage.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.bloodAlcoholContent.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.forcedVitalCapacity.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.forcedExpiratoryVolume1.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.peakExpiratoryFlowRate.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryBiotin.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryCaffeine.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryCalcium.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryCarbohydrates.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryChloride.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryCholesterol.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryChromium.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryCopper.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryEnergyConsumed.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryFatMonounsaturated.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryFatPolyunsaturated.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryFatSaturated.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryFatTotal.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryFiber.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryFolate.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryIodine.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryIron.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryMagnesium.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryManganese.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryMolybdenum.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryNiacin.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryPantothenicAcid.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryPhosphorus.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryPotassium.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryProtein.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryRiboflavin.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietarySelenium.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietarySodium.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietarySugar.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryThiamin.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryVitaminA.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryVitaminB12.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryVitaminB6.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryVitaminC.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryVitaminD.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryVitaminE.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryVitaminK.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryWater.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.dietaryZinc.objectType)
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKQuantityTypeIdentifier.uvExposure.objectType)

        // Incorrect
        mockHealthKitModalityModel.set(quantity: mockQuantity, objectType: HKCategoryTypeIdentifier.sleepAnalysis.objectType)

        Mirror(reflecting: mockHealthKitModalityModel)
            .children
            .map { (child) -> HKQuantity? in
                child.value as? HKQuantity
            }
            .flatMap {
                $0
            }
            .forEach { (quantity) in
                XCTAssertEqual(quantity, mockQuantity)
            }
    }

    func testCategoryExtension() {
        let mockCategoryValue = 0

        mockHealthKitModalityModel.set(category: mockCategoryValue, objectType: HKCategoryTypeIdentifier.sleepAnalysis.objectType)
        mockHealthKitModalityModel.set(category: mockCategoryValue, objectType: HKCategoryTypeIdentifier.appleStandHour.objectType)
        mockHealthKitModalityModel.set(category: mockCategoryValue, objectType: HKCategoryTypeIdentifier.cervicalMucusQuality.objectType)
        mockHealthKitModalityModel.set(category: mockCategoryValue, objectType: HKCategoryTypeIdentifier.ovulationTestResult.objectType)
        mockHealthKitModalityModel.set(category: mockCategoryValue, objectType: HKCategoryTypeIdentifier.menstrualFlow.objectType)
        mockHealthKitModalityModel.set(category: mockCategoryValue, objectType: HKCategoryTypeIdentifier.intermenstrualBleeding.objectType)
        mockHealthKitModalityModel.set(category: mockCategoryValue, objectType: HKCategoryTypeIdentifier.sexualActivity.objectType)
        mockHealthKitModalityModel.set(category: mockCategoryValue, objectType: HKCategoryTypeIdentifier.mindfulSession.objectType)

        // Incorrect
        mockHealthKitModalityModel.set(category: mockCategoryValue, objectType: HKQuantityTypeIdentifier.bodyMassIndex.objectType)

        Mirror(reflecting: mockHealthKitModalityModel)
            .children
            .map { (child) -> HKCategoryValue? in
                child.value as? HKCategoryValue
            }
            .flatMap {
                $0
            }
            .forEach { (category) in
                XCTAssertEqual(category.rawValue, mockCategoryValue)
            }
    }
}
