//
//  LocationModality.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/15/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation
import CoreLocation

public class LocationModality: NSObject, CLLocationManagerDelegate {
    private var locationManager = CLLocationManager()
    private var geocoder = CLGeocoder()

    public private(set) var stimulus = LocationModalityModel(locationCoordinateLatitude: nil,
                                                             locationCoordinateLongitude: nil,
                                                             locationAltitude: nil,
                                                             locationHorizontalAccuracy: nil,
                                                             locationVerticalAccuracy: nil,
                                                             locationCourse: nil,
                                                             locationSpeed: nil,
                                                             locationTimestamp: nil,
                                                             locationFloorLevel: nil,
                                                             beaconProximityUUID: nil,
                                                             beaconMajor: nil,
                                                             beaconMinor: nil,
                                                             beaconProximity: .unknown,
                                                             beaconAccuracy: nil,
                                                             beaconRssi: nil,
                                                             headingMagneticHeading: nil,
                                                             headingTrueHeading: nil,
                                                             headingHeadingAccuracy: nil,
                                                             headingX: nil,
                                                             headingY: nil,
                                                             headingZ: nil,
                                                             headingTimestamp: nil,
                                                             visitArrivalDate: nil,
                                                             visitDepartureDate: nil,
                                                             visitCoordinateLatitude: nil,
                                                             visitCoordinateLongitude: nil,
                                                             visitHorizontalAccuracy: nil,
                                                             placemarkLocationCoordinateLatitude: nil,
                                                             placemarkLocationCoordinateLongitude: nil,
                                                             placemarkLocationAltitude: nil,
                                                             placemarkLocationHorizontalAccuracy: nil,
                                                             placemarkLocationVerticalAccuracy: nil,
                                                             placemarkLocationCourse: nil,
                                                             placemarkLocationSpeed: nil,
                                                             placemarkLocationTimestamp: nil,
                                                             placemarkLocationFloorLevel: nil,
                                                             placemarkRegionIdentifier: nil,
                                                             placemarkTimeZone: nil,
                                                             placemarkAddressDictionary: nil,
                                                             placemarkName: nil,
                                                             placemarkThoroughfare: nil,
                                                             placemarkSubThoroughfare: nil,
                                                             placemarkLocality: nil,
                                                             placemarkSubLocality: nil,
                                                             placemarkAdministrativeArea: nil,
                                                             placemarkSubAdministrativeArea: nil,
                                                             placemarkPostalCode: nil,
                                                             placemarkIsoCountryCode: nil,
                                                             placemarkCountry: nil,
                                                             placemarkInlandWater: nil,
                                                             placemarkOcean: nil,
                                                             placemarkAreasOfInterest: nil)

    init(desiredAccuracy: CLLocationAccuracy = kCLLocationAccuracyBest,
         distanceFilter: CLLocationDistance = kCLDistanceFilterNone,
         headingFilter: CLLocationDegrees = 5) {
        super.init()
        locationManager.desiredAccuracy = desiredAccuracy
        locationManager.distanceFilter = distanceFilter
        locationManager.headingFilter = headingFilter
        locationManager.delegate = self
        startSensing()
    }

    internal func stopSensing() {
        locationManager.stopUpdatingHeading()
        locationManager.stopUpdatingLocation()
        locationManager.stopMonitoringVisits()
    }

    internal func startSensing() {
        locationManager.startUpdatingHeading()
        locationManager.startUpdatingLocation()
        locationManager.startMonitoringVisits()
    }

    // MARK: - CLLocationManagerDelegate

    public func locationManager(_ manager: CLLocationManager,
                                didUpdateLocations locations: [CLLocation]) {
        stimulus.locationCoordinateLatitude = locations.first?.coordinate.latitude
        stimulus.locationCoordinateLongitude = locations.first?.coordinate.longitude
        stimulus.locationAltitude = locations.first?.altitude
        stimulus.locationHorizontalAccuracy = locations.first?.horizontalAccuracy
        stimulus.locationVerticalAccuracy = locations.first?.verticalAccuracy
        stimulus.locationCourse = locations.first?.course
        stimulus.locationSpeed = locations.first?.speed
        stimulus.locationTimestamp = locations.first?.timestamp
        stimulus.locationFloorLevel = locations.first?.floor?.level

        stimulus.headingMagneticHeading = manager.heading?.magneticHeading
        stimulus.headingTrueHeading = manager.heading?.trueHeading
        stimulus.headingHeadingAccuracy = manager.heading?.headingAccuracy
        stimulus.headingX = manager.heading?.x
        stimulus.headingY = manager.heading?.y
        stimulus.headingZ = manager.heading?.z
        stimulus.headingTimestamp = manager.heading?.timestamp

        if let firstLocation = locations.first {
            geocoder.reverseGeocodeLocation(firstLocation, completionHandler: reverseGeocodeLocationHandler)
        }
    }

    public func locationManager(_ manager: CLLocationManager,
                                didRangeBeacons beacons: [CLBeacon],
                                in region: CLBeaconRegion) {
        stimulus.beaconProximityUUID = beacons.first?.proximityUUID
        stimulus.beaconMajor = beacons.first?.major
        stimulus.beaconMinor = beacons.first?.minor
        stimulus.beaconProximity = beacons.first?.proximity ?? .unknown
        stimulus.beaconAccuracy = beacons.first?.accuracy
        stimulus.beaconRssi = beacons.first?.rssi
    }

    public func locationManager(_ manager: CLLocationManager,
                                didVisit visit: CLVisit) {
        stimulus.visitArrivalDate = visit.arrivalDate
        stimulus.visitDepartureDate = visit.departureDate
        stimulus.visitCoordinateLatitude = visit.coordinate.latitude
        stimulus.visitCoordinateLongitude = visit.coordinate.longitude
        stimulus.visitHorizontalAccuracy = visit.horizontalAccuracy
    }

    // MARK: - Internal

    internal func reverseGeocodeLocationHandler(placemarks: [CLPlacemark]?,
                                                error: Error?) {
        stimulus.placemarkLocationCoordinateLatitude = placemarks?.first?.location?.coordinate.latitude
        stimulus.placemarkLocationCoordinateLongitude = placemarks?.first?.location?.coordinate.longitude
        stimulus.placemarkLocationAltitude = placemarks?.first?.location?.altitude
        stimulus.placemarkLocationHorizontalAccuracy = placemarks?.first?.location?.horizontalAccuracy
        stimulus.placemarkLocationVerticalAccuracy = placemarks?.first?.location?.verticalAccuracy
        stimulus.placemarkLocationCourse = placemarks?.first?.location?.course
        stimulus.placemarkLocationSpeed = placemarks?.first?.location?.speed
        stimulus.placemarkLocationTimestamp = placemarks?.first?.location?.timestamp
        stimulus.placemarkLocationFloorLevel = placemarks?.first?.location?.floor?.level
        stimulus.placemarkRegionIdentifier = placemarks?.first?.region?.identifier
        stimulus.placemarkTimeZone = placemarks?.first?.timeZone
        stimulus.placemarkAddressDictionary  = placemarks?.first?.addressDictionary
        stimulus.placemarkName = placemarks?.first?.name
        stimulus.placemarkThoroughfare = placemarks?.first?.thoroughfare
        stimulus.placemarkSubThoroughfare = placemarks?.first?.subThoroughfare
        stimulus.placemarkLocality = placemarks?.first?.locality
        stimulus.placemarkSubLocality = placemarks?.first?.subLocality
        stimulus.placemarkAdministrativeArea = placemarks?.first?.administrativeArea
        stimulus.placemarkSubAdministrativeArea = placemarks?.first?.subAdministrativeArea
        stimulus.placemarkPostalCode = placemarks?.first?.postalCode
        stimulus.placemarkIsoCountryCode = placemarks?.first?.isoCountryCode
        stimulus.placemarkCountry = placemarks?.first?.country
        stimulus.placemarkInlandWater = placemarks?.first?.inlandWater
        stimulus.placemarkOcean = placemarks?.first?.ocean
        stimulus.placemarkAreasOfInterest = placemarks?.first?.areasOfInterest
    }
}
