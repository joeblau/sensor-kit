//
//  HealthKitModalityModel.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/7/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

// Source: https://developer.apple.com/reference/healthkit/1627060-healthkit_constants/

import Foundation
import HealthKit

// codebeat:disable[TOO_MANY_IVARS]
public struct HealthKitModalityModel: ModalityModel {
    // Body Measurements
    var bodyMassIndex: HKQuantity?
    var bodyFatPercentage: HKQuantity?
    var height: HKQuantity?
    var bodyMass: HKQuantity?
    var leanBodyMass: HKQuantity?

    // Fitness
    var stepCount: HKQuantity?
    var distanceWalkingRunning: HKQuantity?
    var distanceCycling: HKQuantity?
    var distanceWheelchair: HKQuantity?
    var basalEnergyBurned: HKQuantity?
    var activeEnergyBurned: HKQuantity?
    var flightsClimbed: HKQuantity?
    var nikeFuel: HKQuantity?
    var appleExerciseTime: HKQuantity?
    var pushCount: HKQuantity?

    // Vital Signs
    var heartRate: HKQuantity?
    var bodyTemperature: HKQuantity?
    var basalBodyTemperature: HKQuantity?
    var bloodPressureSystolic: HKQuantity?
    var bloodPressureDiastolic: HKQuantity?
    var respiratoryRate: HKQuantity?

    // Results
    var oxygenSaturation: HKQuantity?
    var peripheralPerfusionIndex: HKQuantity?
    var bloodGlucose: HKQuantity?
    var numberOfTimesFallen: HKQuantity?
    var electrodermalActivity: HKQuantity?
    var inhalerUsage: HKQuantity?
    var bloodAlcoholContent: HKQuantity?
    var forcedVitalCapacity: HKQuantity?
    var forcedExpiratoryVolume1: HKQuantity?
    var peakExpiratoryFlowRate: HKQuantity?

    // Nutrition
    var dietaryBiotin: HKQuantity?
    var dietaryCaffeine: HKQuantity?
    var dietaryCalcium: HKQuantity?
    var dietaryCarbohydrates: HKQuantity?
    var dietaryChloride: HKQuantity?
    var dietaryCholesterol: HKQuantity?
    var dietaryChromium: HKQuantity?
    var dietaryCopper: HKQuantity?
    var dietaryEnergyConsumed: HKQuantity?
    var dietaryFatMonounsaturated: HKQuantity?
    var dietaryFatPolyunsaturated: HKQuantity?
    var dietaryFatSaturated: HKQuantity?
    var dietaryFatTotal: HKQuantity?
    var dietaryFiber: HKQuantity?
    var dietaryFolate: HKQuantity?
    var dietaryIodine: HKQuantity?
    var dietaryIron: HKQuantity?
    var dietaryMagnesium: HKQuantity?
    var dietaryManganese: HKQuantity?
    var dietaryMolybdenum: HKQuantity?
    var dietaryNiacin: HKQuantity?
    var dietaryPantothenicAcid: HKQuantity?
    var dietaryPhosphorus: HKQuantity?
    var dietaryPotassium: HKQuantity?
    var dietaryProtein: HKQuantity?
    var dietaryRiboflavin: HKQuantity?
    var dietarySelenium: HKQuantity?
    var dietarySodium: HKQuantity?
    var dietarySugar: HKQuantity?
    var dietaryThiamin: HKQuantity?
    var dietaryVitaminA: HKQuantity?
    var dietaryVitaminB12: HKQuantity?
    var dietaryVitaminB6: HKQuantity?
    var dietaryVitaminC: HKQuantity?
    var dietaryVitaminD: HKQuantity?
    var dietaryVitaminE: HKQuantity?
    var dietaryVitaminK: HKQuantity?
    var dietaryWater: HKQuantity?
    var dietaryZinc: HKQuantity?

    // UVExposure
    var uvExposure: HKQuantity?

    // Category
    var sleepAnalysis: HKCategoryValueSleepAnalysis?
    var appleStandHour: HKCategoryValueAppleStandHour?
    var cervicalMucusQuality: HKCategoryValueCervicalMucusQuality?
    var ovulationTestResult: HKCategoryValueOvulationTestResult?
    var menstrualFlow: HKCategoryValueMenstrualFlow?
    var intermenstrualBleeding: HKCategoryValue?
    var sexualActivity: HKCategoryValue?
    var mindfulSession: HKCategoryValue?

    // Characteristics
    var biologicalSex: HKBiologicalSex?
    var bloodType: HKBloodType?
    var dateOfBirth: Date?
    var fitzpatrickSkinType: HKFitzpatrickSkinType?
    var wheelchairUse: Bool?

    // Workout
    var workout: HKWorkout?
}
// codebeat:enable[TOO_MANY_IVARS]

// codebeat:disable[CYCLO,ABC,LOC]
// swiftlint:disable cyclomatic_complexity
// swiftlint:disable function_body_length

extension HealthKitModalityModel {
    mutating func set(quantity: HKQuantity, objectType: HKObjectType) {
        switch objectType {
        case HKQuantityTypeIdentifier.bodyMassIndex.objectType: bodyMassIndex = quantity
        case HKQuantityTypeIdentifier.bodyFatPercentage.objectType: bodyFatPercentage = quantity
        case HKQuantityTypeIdentifier.height.objectType: height = quantity
        case HKQuantityTypeIdentifier.bodyMass.objectType: bodyMass = quantity
        case HKQuantityTypeIdentifier.leanBodyMass.objectType: leanBodyMass = quantity
        case HKQuantityTypeIdentifier.stepCount.objectType: stepCount = quantity
        case HKQuantityTypeIdentifier.distanceWalkingRunning.objectType: distanceWalkingRunning = quantity
        case HKQuantityTypeIdentifier.distanceCycling.objectType: distanceCycling = quantity
        case HKQuantityTypeIdentifier.distanceWheelchair.objectType: distanceWheelchair = quantity
        case HKQuantityTypeIdentifier.basalEnergyBurned.objectType: basalEnergyBurned = quantity
        case HKQuantityTypeIdentifier.activeEnergyBurned.objectType: activeEnergyBurned = quantity
        case HKQuantityTypeIdentifier.flightsClimbed.objectType: flightsClimbed = quantity
        case HKQuantityTypeIdentifier.nikeFuel.objectType: nikeFuel = quantity
        case HKQuantityTypeIdentifier.appleExerciseTime.objectType: appleExerciseTime = quantity
        case HKQuantityTypeIdentifier.pushCount.objectType: pushCount = quantity
        case HKQuantityTypeIdentifier.heartRate.objectType: heartRate = quantity
        case HKQuantityTypeIdentifier.bodyTemperature.objectType: bodyTemperature = quantity
        case HKQuantityTypeIdentifier.basalBodyTemperature.objectType: basalBodyTemperature = quantity
        case HKQuantityTypeIdentifier.bloodPressureSystolic.objectType: bloodPressureSystolic = quantity
        case HKQuantityTypeIdentifier.bloodPressureDiastolic.objectType: bloodPressureDiastolic = quantity
        case HKQuantityTypeIdentifier.respiratoryRate.objectType: respiratoryRate = quantity
        case HKQuantityTypeIdentifier.oxygenSaturation.objectType: oxygenSaturation = quantity
        case HKQuantityTypeIdentifier.peripheralPerfusionIndex.objectType: peripheralPerfusionIndex = quantity
        case HKQuantityTypeIdentifier.bloodGlucose.objectType: bloodGlucose = quantity
        case HKQuantityTypeIdentifier.numberOfTimesFallen.objectType: numberOfTimesFallen = quantity
        case HKQuantityTypeIdentifier.electrodermalActivity.objectType: electrodermalActivity = quantity
        case HKQuantityTypeIdentifier.inhalerUsage.objectType: inhalerUsage = quantity
        case HKQuantityTypeIdentifier.bloodAlcoholContent.objectType: bloodAlcoholContent = quantity
        case HKQuantityTypeIdentifier.forcedVitalCapacity.objectType: forcedVitalCapacity = quantity
        case HKQuantityTypeIdentifier.forcedExpiratoryVolume1.objectType: forcedExpiratoryVolume1 = quantity
        case HKQuantityTypeIdentifier.peakExpiratoryFlowRate.objectType: peakExpiratoryFlowRate = quantity
        case HKQuantityTypeIdentifier.dietaryBiotin.objectType: dietaryBiotin = quantity
        case HKQuantityTypeIdentifier.dietaryCaffeine.objectType: dietaryCaffeine = quantity
        case HKQuantityTypeIdentifier.dietaryCalcium.objectType: dietaryCalcium = quantity
        case HKQuantityTypeIdentifier.dietaryCarbohydrates.objectType: dietaryCarbohydrates = quantity
        case HKQuantityTypeIdentifier.dietaryChloride.objectType: dietaryChloride = quantity
        case HKQuantityTypeIdentifier.dietaryCholesterol.objectType: dietaryCholesterol = quantity
        case HKQuantityTypeIdentifier.dietaryChromium.objectType: dietaryChromium = quantity
        case HKQuantityTypeIdentifier.dietaryCopper.objectType: dietaryCopper = quantity
        case HKQuantityTypeIdentifier.dietaryEnergyConsumed.objectType: dietaryEnergyConsumed = quantity
        case HKQuantityTypeIdentifier.dietaryFatMonounsaturated.objectType: dietaryFatMonounsaturated = quantity
        case HKQuantityTypeIdentifier.dietaryFatPolyunsaturated.objectType: dietaryFatPolyunsaturated = quantity
        case HKQuantityTypeIdentifier.dietaryFatSaturated.objectType: dietaryFatSaturated = quantity
        case HKQuantityTypeIdentifier.dietaryFatTotal.objectType: dietaryFatTotal = quantity
        case HKQuantityTypeIdentifier.dietaryFiber.objectType: dietaryFiber = quantity
        case HKQuantityTypeIdentifier.dietaryFolate.objectType: dietaryFolate = quantity
        case HKQuantityTypeIdentifier.dietaryIodine.objectType: dietaryIodine = quantity
        case HKQuantityTypeIdentifier.dietaryIron.objectType: dietaryIron = quantity
        case HKQuantityTypeIdentifier.dietaryMagnesium.objectType: dietaryMagnesium = quantity
        case HKQuantityTypeIdentifier.dietaryManganese.objectType: dietaryManganese = quantity
        case HKQuantityTypeIdentifier.dietaryMolybdenum.objectType: dietaryMolybdenum = quantity
        case HKQuantityTypeIdentifier.dietaryNiacin.objectType: dietaryNiacin = quantity
        case HKQuantityTypeIdentifier.dietaryPantothenicAcid.objectType: dietaryPantothenicAcid = quantity
        case HKQuantityTypeIdentifier.dietaryPhosphorus.objectType: dietaryPhosphorus = quantity
        case HKQuantityTypeIdentifier.dietaryPotassium.objectType: dietaryPotassium = quantity
        case HKQuantityTypeIdentifier.dietaryProtein.objectType: dietaryProtein = quantity
        case HKQuantityTypeIdentifier.dietaryRiboflavin.objectType: dietaryRiboflavin = quantity
        case HKQuantityTypeIdentifier.dietarySelenium.objectType: dietarySelenium = quantity
        case HKQuantityTypeIdentifier.dietarySodium.objectType: dietarySodium = quantity
        case HKQuantityTypeIdentifier.dietarySugar.objectType: dietarySugar = quantity
        case HKQuantityTypeIdentifier.dietaryThiamin.objectType: dietaryThiamin = quantity
        case HKQuantityTypeIdentifier.dietaryVitaminA.objectType: dietaryVitaminA = quantity
        case HKQuantityTypeIdentifier.dietaryVitaminB12.objectType: dietaryVitaminB12 = quantity
        case HKQuantityTypeIdentifier.dietaryVitaminB6.objectType: dietaryVitaminB6 = quantity
        case HKQuantityTypeIdentifier.dietaryVitaminC.objectType: dietaryVitaminC = quantity
        case HKQuantityTypeIdentifier.dietaryVitaminD.objectType: dietaryVitaminD = quantity
        case HKQuantityTypeIdentifier.dietaryVitaminE.objectType: dietaryVitaminE = quantity
        case HKQuantityTypeIdentifier.dietaryVitaminK.objectType: dietaryVitaminK = quantity
        case HKQuantityTypeIdentifier.dietaryWater.objectType: dietaryWater = quantity
        case HKQuantityTypeIdentifier.dietaryZinc.objectType: dietaryZinc = quantity
        case HKQuantityTypeIdentifier.uvExposure.objectType: uvExposure = quantity
        default: return
        }
    }

    mutating func set(category: Int, objectType: HKObjectType) {
        switch objectType {
        case HKCategoryTypeIdentifier.sleepAnalysis.objectType: sleepAnalysis = HKCategoryValueSleepAnalysis(rawValue: category)
        case HKCategoryTypeIdentifier.appleStandHour.objectType: appleStandHour = HKCategoryValueAppleStandHour(rawValue: category)
        case HKCategoryTypeIdentifier.cervicalMucusQuality.objectType: cervicalMucusQuality = HKCategoryValueCervicalMucusQuality(rawValue: category)
        case HKCategoryTypeIdentifier.ovulationTestResult.objectType: ovulationTestResult = HKCategoryValueOvulationTestResult(rawValue: category)
        case HKCategoryTypeIdentifier.menstrualFlow.objectType: menstrualFlow = HKCategoryValueMenstrualFlow(rawValue: category)
        case HKCategoryTypeIdentifier.intermenstrualBleeding.objectType: intermenstrualBleeding = HKCategoryValue(rawValue: category)
        case HKCategoryTypeIdentifier.sexualActivity.objectType: sexualActivity = HKCategoryValue(rawValue: category)
        case HKCategoryTypeIdentifier.mindfulSession.objectType: mindfulSession = HKCategoryValue(rawValue: category)
        default: return
        }
    }
}
// swiftlint:enable cyclomatic_complexity
// swiftlint:enable function_body_length
// codebeat:enable[CYCLO,ABC,LOC]
