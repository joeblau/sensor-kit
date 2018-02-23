//
//  HealthKitModality.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/7/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import HealthKit

// swiftlint:disable type_body_length
public class HealthKitModality {
    private let healthKitStore = HKHealthStore()
    private let healthKitAuthorizationSets = Set<HKObjectType>(arrayLiteral:
                                                       HKQuantityTypeIdentifier.bodyMassIndex.objectType,
                                                       HKQuantityTypeIdentifier.bodyFatPercentage.objectType,
                                                       HKQuantityTypeIdentifier.height.objectType,
                                                       HKQuantityTypeIdentifier.bodyMass.objectType,
                                                       HKQuantityTypeIdentifier.leanBodyMass.objectType,

                                                       HKQuantityTypeIdentifier.stepCount.objectType,
                                                       HKQuantityTypeIdentifier.distanceWalkingRunning.objectType,
                                                       HKQuantityTypeIdentifier.distanceCycling.objectType,
                                                       HKQuantityTypeIdentifier.distanceWheelchair.objectType,
                                                       HKQuantityTypeIdentifier.basalEnergyBurned.objectType,
                                                       HKQuantityTypeIdentifier.activeEnergyBurned.objectType,
                                                       HKQuantityTypeIdentifier.flightsClimbed.objectType,
                                                       HKQuantityTypeIdentifier.nikeFuel.objectType,
                                                       HKQuantityTypeIdentifier.appleExerciseTime.objectType,
                                                       HKQuantityTypeIdentifier.pushCount.objectType,

                                                       HKQuantityTypeIdentifier.heartRate.objectType,
                                                       HKQuantityTypeIdentifier.bodyTemperature.objectType,
                                                       HKQuantityTypeIdentifier.basalBodyTemperature.objectType,
                                                       HKQuantityTypeIdentifier.bloodPressureSystolic.objectType,
                                                       HKQuantityTypeIdentifier.bloodPressureDiastolic.objectType,
                                                       HKQuantityTypeIdentifier.respiratoryRate.objectType,

                                                       HKQuantityTypeIdentifier.oxygenSaturation.objectType,
                                                       HKQuantityTypeIdentifier.peripheralPerfusionIndex.objectType,
                                                       HKQuantityTypeIdentifier.bloodGlucose.objectType,
                                                       HKQuantityTypeIdentifier.numberOfTimesFallen.objectType,
                                                       HKQuantityTypeIdentifier.electrodermalActivity.objectType,
                                                       HKQuantityTypeIdentifier.inhalerUsage.objectType,
                                                       HKQuantityTypeIdentifier.bloodAlcoholContent.objectType,
                                                       HKQuantityTypeIdentifier.forcedVitalCapacity.objectType,
                                                       HKQuantityTypeIdentifier.forcedExpiratoryVolume1.objectType,
                                                       HKQuantityTypeIdentifier.peakExpiratoryFlowRate.objectType,

                                                       HKQuantityTypeIdentifier.dietaryBiotin.objectType,
                                                       HKQuantityTypeIdentifier.dietaryCaffeine.objectType,
                                                       HKQuantityTypeIdentifier.dietaryCalcium.objectType,
                                                       HKQuantityTypeIdentifier.dietaryCarbohydrates.objectType,
                                                       HKQuantityTypeIdentifier.dietaryChloride.objectType,
                                                       HKQuantityTypeIdentifier.dietaryCholesterol.objectType,
                                                       HKQuantityTypeIdentifier.dietaryChromium.objectType,
                                                       HKQuantityTypeIdentifier.dietaryCopper.objectType,
                                                       HKQuantityTypeIdentifier.dietaryEnergyConsumed.objectType,
                                                       HKQuantityTypeIdentifier.dietaryFatMonounsaturated.objectType,
                                                       HKQuantityTypeIdentifier.dietaryFatPolyunsaturated.objectType,
                                                       HKQuantityTypeIdentifier.dietaryFatSaturated.objectType,
                                                       HKQuantityTypeIdentifier.dietaryFatTotal.objectType,
                                                       HKQuantityTypeIdentifier.dietaryFiber.objectType,
                                                       HKQuantityTypeIdentifier.dietaryFolate.objectType,
                                                       HKQuantityTypeIdentifier.dietaryIodine.objectType,
                                                       HKQuantityTypeIdentifier.dietaryIron.objectType,
                                                       HKQuantityTypeIdentifier.dietaryMagnesium.objectType,
                                                       HKQuantityTypeIdentifier.dietaryManganese.objectType,
                                                       HKQuantityTypeIdentifier.dietaryMolybdenum.objectType,
                                                       HKQuantityTypeIdentifier.dietaryNiacin.objectType,
                                                       HKQuantityTypeIdentifier.dietaryPantothenicAcid.objectType,
                                                       HKQuantityTypeIdentifier.dietaryPhosphorus.objectType,
                                                       HKQuantityTypeIdentifier.dietaryPotassium.objectType,
                                                       HKQuantityTypeIdentifier.dietaryProtein.objectType,
                                                       HKQuantityTypeIdentifier.dietaryRiboflavin.objectType,
                                                       HKQuantityTypeIdentifier.dietarySelenium.objectType,
                                                       HKQuantityTypeIdentifier.dietarySodium.objectType,
                                                       HKQuantityTypeIdentifier.dietarySugar.objectType,
                                                       HKQuantityTypeIdentifier.dietaryThiamin.objectType,
                                                       HKQuantityTypeIdentifier.dietaryVitaminA.objectType,
                                                       HKQuantityTypeIdentifier.dietaryVitaminB12.objectType,
                                                       HKQuantityTypeIdentifier.dietaryVitaminB6.objectType,
                                                       HKQuantityTypeIdentifier.dietaryVitaminC.objectType,
                                                       HKQuantityTypeIdentifier.dietaryVitaminD.objectType,
                                                       HKQuantityTypeIdentifier.dietaryVitaminE.objectType,
                                                       HKQuantityTypeIdentifier.dietaryVitaminK.objectType,
                                                       HKQuantityTypeIdentifier.dietaryWater.objectType,
                                                       HKQuantityTypeIdentifier.dietaryZinc.objectType,

                                                       HKQuantityTypeIdentifier.uvExposure.objectType,

                                                       HKCategoryTypeIdentifier.sleepAnalysis.objectType,
                                                       HKCategoryTypeIdentifier.appleStandHour.objectType,
                                                       HKCategoryTypeIdentifier.cervicalMucusQuality.objectType,
                                                       HKCategoryTypeIdentifier.ovulationTestResult.objectType,
                                                       HKCategoryTypeIdentifier.menstrualFlow.objectType,
                                                       HKCategoryTypeIdentifier.intermenstrualBleeding.objectType,
                                                       HKCategoryTypeIdentifier.sexualActivity.objectType,

                                                       HKCharacteristicTypeIdentifier.biologicalSex.objectType,
                                                       HKCharacteristicTypeIdentifier.bloodType.objectType,
                                                       HKCharacteristicTypeIdentifier.dateOfBirth.objectType,
                                                       HKCharacteristicTypeIdentifier.fitzpatrickSkinType.objectType,

                                                       HKObjectType.workoutType()
    )

    public private(set) var stimulus = HealthKitModalityModel(bodyMassIndex: nil,
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

    public func updateStimulus() {
        healthKitAuthorizationSets
            .map { (objectType) -> HKSampleType? in
                if let sample = HKSampleType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: objectType.identifier)) {
                    return sample
                } else if let sample = HKSampleType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: objectType.identifier)) {
                    return sample
                } else if objectType.identifier == HKWorkoutTypeIdentifier {
                    return HKSampleType.workoutType()
                }
                return nil
            }
            .flatMap { $0 }
            .forEach { (sampleType) in
                getSample(sampleType: sampleType)
            }
    }

    // MARK: - AuthorizationProtocol

    public func authorized(sampleType: HKSampleType) -> Bool {
        return healthKitStore.authorizationStatus(for: sampleType) == .sharingAuthorized
    }

    // MARK: - Internal

    internal func getSample(sampleType: HKSampleType) {
        if authorized(sampleType: sampleType) {

            let sampleQuery = HKSampleQuery(sampleType: sampleType,
                                            predicate: HKQuery.predicateForSamples(withStart: Date.distantPast,
                                                                                   end: Date(),
                                                                                   options: []),
                                            limit: 1,
                                            sortDescriptors: [NSSortDescriptor(key: HKSampleSortIdentifierStartDate,
                                                                               ascending: false)],
                                            resultsHandler: sampleResultsHandler)
            self.healthKitStore.execute(sampleQuery)
        }
    }

    internal func requestAuthorizationCompletion(success: Bool, error: Error?) {

    }

    internal func sampleResultsHandler(sampleQuery: HKSampleQuery, samples: [HKSample]?, error: Error?) {
        self.populateStimulus(samples: samples)
    }

    internal func populateStimulus(samples: [HKSample]?) {
        if let quantitySamples = samples as? [HKQuantitySample] {
            quantitySamples.forEach { (quantitySample) in
                self.stimulus.set(quantity: quantitySample.quantity, objectType: quantitySample.sampleType)

            }
        } else if let categorySamples = samples as? [HKCategorySample] {
            categorySamples.forEach { (categorySample) in
                self.stimulus.set(category: categorySample.value, objectType : categorySample.categoryType)
            }
        }
    }
}
// swiftlint:enable type_body_length

extension HKQuantityTypeIdentifier {
    var objectType: HKObjectType {
        return HKObjectType.quantityType(forIdentifier: self)!
    }
}

extension HKCategoryTypeIdentifier {
    var objectType: HKObjectType {
        return HKObjectType.categoryType(forIdentifier: self)!
    }
}

extension HKCharacteristicTypeIdentifier {
    var objectType: HKObjectType {
        return HKObjectType.characteristicType(forIdentifier: self)!
    }
}
