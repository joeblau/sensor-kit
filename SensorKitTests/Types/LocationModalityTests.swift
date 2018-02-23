//
//  LocationModalityTests.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/15/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import XCTest
import CoreLocation

@testable import SensorKit

fileprivate let mockIntTen = 10
fileprivate let mockDoubleTen = 10.0
fileprivate let mockTimeZone = TimeZone(secondsFromGMT: 0)!
fileprivate let mockLocationDate = Date(timeIntervalSince1970: 100)
fileprivate let mockCoordinate = CLLocationCoordinate2D(latitude: mockDoubleTen, longitude: mockDoubleTen)
fileprivate let mockUUID = UUID(uuidString: "68B696D7-320B-4402-A412-D9CEE10FC6A3")!

fileprivate class MockVisit: CLVisit {
    fileprivate override var arrivalDate: Date {
        return mockLocationDate
    }
    fileprivate override var departureDate: Date {
        return mockLocationDate
    }
    fileprivate override var coordinate: CLLocationCoordinate2D {
        return mockCoordinate
    }
    fileprivate override var horizontalAccuracy: CLLocationAccuracy {
        return mockDoubleTen
    }
}

//fileprivate class MockBeacon: CLBeacon {
//    fileprivate override var proximityUUID: UUID {
//        return mockUUID
//    }
//    fileprivate override var major: NSNumber {
//        return NSNumber(value: mockIntTen)
//    }
//    fileprivate override var minor: NSNumber {
//        return NSNumber(value: mockIntTen)
//    }
//    fileprivate override var proximity: CLProximity {
//        return .near
//    }
//    fileprivate override var accuracy: CLLocationAccuracy {
//        return mockDoubleTen
//    }
//    fileprivate override var rssi: Int {
//        return mockIntTen
//    }
//}

class LocationModalityTests: XCTestCase {

    func testLocationModality() {
        let mockLocationModality = LocationModality()
        mockLocationModality.stopSensing()
        XCTAssertNotNil(mockLocationModality)
    }

    func testReverseGeocode() {
        let mockLocationModality = LocationModality()

//        class MockFloor: CLFloor {
//            public override var level: Int {
//                return mockIntTen
//            }
//        }
//        
//        class MockLocation: CLLocation {
//            public override var coordinate: CLLocationCoordinate2D {
//                return mockCoordinate
//            }
//            public override var altitude: CLLocationDistance {
//                return mockDoubleTen
//            }
//            public override var horizontalAccuracy: CLLocationAccuracy {
//                return mockDoubleTen
//            }
//            public override var verticalAccuracy: CLLocationAccuracy {
//                return mockDoubleTen
//            }
//            public override var course: CLLocationDirection {
//                return mockDoubleTen
//            }
//            public override var speed: CLLocationSpeed {
//                return mockDoubleTen
//            }
//            public override var timestamp: Date {
//                return mockLocationDate
//            }
//            public override var floor: CLFloor? {
//                return MockFloor()
//            }
//        }
//        
//        class MockRegion: CLRegion {
//            public override var identifier: String {
//                return "abc"
//            }
//        }
//        
//        class MockPlacemark: CLPlacemark {
//            public override var location: CLLocation? {
//                return MockLocation()
//            }
//            public override var region: CLRegion {
//                return MockRegion()
//            }
//            public override var timeZone: TimeZone {
//                return mockTimeZone
//            }
//            public override var addressDictionary: [AnyHashable : Any] {
//                return [:]
//            }
//            public override var name: String {
//                return "def"
//            }
//            public override var thoroughfare: String {
//                return "hij"
//            }
//            public override var subThoroughfare: String {
//                return "klm"
//            }
//            public override var locality: String {
//                return "nop"
//            }
//            public override var subLocality: String {
//                return "qrs"
//            }
//            public override var administrativeArea: String {
//                return "tuv"
//            }
//            public override var subAdministrativeArea: String {
//                return "wxy"
//            }
//            public override var postalCode: String {
//                return "zab"
//            }
//            public override var isoCountryCode: String {
//                return "cde"
//            }
//            public override var country: String {
//                return "fgh"
//            }
//            public override var inlandWater: String {
//                return "ijk"
//            }
//            public override var ocean: String {
//                return "lmn"
//            }
//            public override var areasOfInterest: [String] {
//                return ["mop"]
//            }
//        }

        // Bug In Apples Core LocationN Placemark Initializtion
//        let mockPlacemarks = [MockPlacemark)
        mockLocationModality.reverseGeocodeLocationHandler(placemarks: [], error: nil)

//        XCTAssertEqual(mockLocationModality.stimulus.placemarkLocationCoordinateLatitude, mockPlacemark.location?.coordinate.latitude )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkLocationCoordinateLongitude, mockPlacemark.location?.coordinate.longitude )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkLocationAltitude, mockPlacemark.location?.altitude )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkLocationHorizontalAccuracy, mockPlacemark.location?.horizontalAccuracy )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkLocationVerticalAccuracy, mockPlacemark.location?.verticalAccuracy )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkLocationCourse, mockPlacemark.location?.course )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkLocationSpeed, mockPlacemark.location?.speed )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkLocationTimestamp, mockPlacemark.location?.timestamp )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkLocationFloorLevel, mockPlacemark.location?.floor?.level )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkRegionIdentifier, mockPlacemark.region.identifier )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkTimeZone, mockPlacemark.timeZone )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkAddressDictionary?.count, mockPlacemark.addressDictionary.count )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkName, mockPlacemark.name )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkThoroughfare, mockPlacemark.thoroughfare )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkSubThoroughfare, mockPlacemark.subThoroughfare )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkLocality, mockPlacemark.locality )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkSubLocality, mockPlacemark.subLocality )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkAdministrativeArea, mockPlacemark.administrativeArea )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkSubAdministrativeArea, mockPlacemark.subAdministrativeArea )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkPostalCode, mockPlacemark.postalCode )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkIsoCountryCode, mockPlacemark.isoCountryCode )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkCountry, mockPlacemark.country )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkInlandWater, mockPlacemark.inlandWater )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkOcean, mockPlacemark.ocean )
//        XCTAssertEqual(mockLocationModality.stimulus.placemarkAreasOfInterest?.first, mockPlacemark.areasOfInterest.first )
        XCTAssertNotNil(mockLocationModality)
    }

    func testVisit() {
        let mockLocationModality = LocationModality()
        let mockVisit = MockVisit()

        mockLocationModality.locationManager(CLLocationManager(), didVisit: mockVisit)

        XCTAssertEqual(mockLocationModality.stimulus.visitArrivalDate, mockVisit.arrivalDate)
        XCTAssertEqual(mockLocationModality.stimulus.visitDepartureDate, mockVisit.departureDate)
        XCTAssertEqual(mockLocationModality.stimulus.visitCoordinateLatitude, mockVisit.coordinate.latitude)
        XCTAssertEqual(mockLocationModality.stimulus.visitCoordinateLongitude, mockVisit.coordinate.longitude)
        XCTAssertEqual(mockLocationModality.stimulus.visitHorizontalAccuracy, mockVisit.horizontalAccuracy)
    }

    func testBeacons() {
        let mockLocationModality = LocationModality()
//        let mockBeacon = MockBeacon()

        let mockBeaconRegion = CLBeaconRegion(proximityUUID: mockUUID, identifier: "abc")

        mockLocationModality.locationManager(CLLocationManager(), didRangeBeacons: [], in: mockBeaconRegion)

//        XCTAssertEqual(mockLocationModality.stimulus.beaconProximityUUID, mockBeacon.proximityUUID)
//        XCTAssertEqual(mockLocationModality.stimulus.beaconMajor, mockBeacon.major)
//        XCTAssertEqual(mockLocationModality.stimulus.beaconMinor, mockBeacon.minor)
//        XCTAssertEqual(mockLocationModality.stimulus.beaconProximity, mockBeacon.proximity)
//        XCTAssertEqual(mockLocationModality.stimulus.beaconAccuracy, mockBeacon.accuracy)
//        XCTAssertEqual(mockLocationModality.stimulus.beaconRssi, mockBeacon.rssi)
        XCTAssertNotNil(mockLocationModality)
    }

    func testLocationUpdate() {
        let mockLocationModality = LocationModality()

        let mockLocationManager = CLLocationManager()

        let mockLocation = CLLocation()

        mockLocationModality.locationManager(mockLocationManager, didUpdateLocations: [mockLocation])
        XCTAssertNotNil(mockLocationModality)
    }
}
