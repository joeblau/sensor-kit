//
//  LocationModalityModel.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/15/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import CoreLocation

// codebeat:disable[TOO_MANY_IVARS]
public struct LocationModalityModel: ModalityModel {
    // CLLocation
    var locationCoordinateLatitude: CLLocationDegrees?
    var locationCoordinateLongitude: CLLocationDegrees?
    var locationAltitude: CLLocationDistance?
    var locationHorizontalAccuracy: CLLocationAccuracy?
    var locationVerticalAccuracy: CLLocationAccuracy?
    var locationCourse: CLLocationDirection?
    var locationSpeed: CLLocationSpeed?
    var locationTimestamp: Date?
    var locationFloorLevel: Int?

    // CLBeacon
    var beaconProximityUUID: UUID?
    var beaconMajor: NSNumber?
    var beaconMinor: NSNumber?
    var beaconProximity: CLProximity
    var beaconAccuracy: CLLocationAccuracy?
    var beaconRssi: Int?

    // CLHeading
    var headingMagneticHeading: CLLocationDirection?
    var headingTrueHeading: CLLocationDirection?
    var headingHeadingAccuracy: CLLocationDirection?
    var headingX: CLHeadingComponentValue?
    var headingY: CLHeadingComponentValue?
    var headingZ: CLHeadingComponentValue?
    var headingTimestamp: Date?

    // CLVisit
    var visitArrivalDate: Date?
    var visitDepartureDate: Date?
    var visitCoordinateLatitude: CLLocationDegrees?
    var visitCoordinateLongitude: CLLocationDegrees?
    var visitHorizontalAccuracy: CLLocationAccuracy?

    // CLPlacemark
    var placemarkLocationCoordinateLatitude: CLLocationDegrees?
    var placemarkLocationCoordinateLongitude: CLLocationDegrees?
    var placemarkLocationAltitude: CLLocationDistance?
    var placemarkLocationHorizontalAccuracy: CLLocationAccuracy?
    var placemarkLocationVerticalAccuracy: CLLocationAccuracy?
    var placemarkLocationCourse: CLLocationDirection?
    var placemarkLocationSpeed: CLLocationSpeed?
    var placemarkLocationTimestamp: Date?
    var placemarkLocationFloorLevel: Int?
    var placemarkRegionIdentifier: String?
    var placemarkTimeZone: TimeZone?
    var placemarkAddressDictionary: [AnyHashable : Any]?
    var placemarkName: String?
    var placemarkThoroughfare: String?
    var placemarkSubThoroughfare: String?
    var placemarkLocality: String?
    var placemarkSubLocality: String?
    var placemarkAdministrativeArea: String?
    var placemarkSubAdministrativeArea: String?
    var placemarkPostalCode: String?
    var placemarkIsoCountryCode: String?
    var placemarkCountry: String?
    var placemarkInlandWater: String?
    var placemarkOcean: String?
    var placemarkAreasOfInterest: [String]?
}
// codebeat:enable[TOO_MANY_IVARS]

extension CLProximity: CustomStringConvertible {
    public var description: String {
        switch self {
        case .unknown: return "Unknown"
        case .near: return "Near"
        case .immediate: return "Immediate"
        case .far: return "Far"
        }
    }
}
