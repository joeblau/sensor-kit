<img src="https://cdn.rawgit.com/bodlog/sensor-kit/master/.github/sensor-kit.svg"/>

<p align="center">
  <a href="https://swift.org"><img src="https://img.shields.io/badge/swift-4.1-brightgreen.svg?style=flat-square"/></a>
  <a href="https://www.apple.com/ios/"><img src="https://img.shields.io/badge/platform-iOS-brightgreen.svg?style=flat-square"/></a>
  <a href=""><img src="https://img.shields.io/circleci/bodlog/sensor-kit.svg?style=flat-square"/></a>
  <a href="https://codecov.io/gh/bodlog/sensor-kit"><img src="https://img.shields.io/codecov/c/github/bodlog/sensor-kit.svg?style=flat-square"/></a>
  <a href="https://github.com/bodlog/sensor-kit/releases"><img src="https://img.shields.io/github/release/bodlog/sensor-kit.svg?style=flat-square"/></a>
  <a href="https://github.com/bodlog/sensor-kit/blob/master/LICENSE"><img src="https://img.shields.io/github/license/bodlog/sensor-kit.svg?style=flat-square"/></a>
</p>

SensorKit is an iOS 10.x+ framework for capturing all input and output sensors on iOS.

## Dependencies

- [AstronomyKit](https://github.com/bodlog/astronomy-kit)

## Install

To install with [Carthage](https://github.com/Carthage/Carthage), add the following line to your `Cartfile`

```swift
github "bodlog/SensorKit"
```

## Usage


## Sensors

| Digital Sensor | Human Sense | Input / Output |
|---|---|---|
| Volume Button | | Volume Up / Volume Down |
| Camera | Sight | • JPEG Images |
| Touch Screen | Gesture Touch | • Tap<br>• Pinch<br>• Pan<br>• Swipe<br>• Rotate<br>• Long Press<br>• Edge Swipe |
| Device Speaker | Dirty Audio Out | • wav<br>• aiff<br>• caf<br>• speech to text |
| External Headphones | Clean Audio Out | • wav<br>• aiff<br>• caf<br>• speech to text |
| GPS | Location | |
| Connected Devices | Device Physical Penetration | • Headphone Jack Is Connected |
| Lightning | Tethered Wired Communication | • Lightning Jack Is Connected |
| WiFi | Tethered Wireless Communication | |
| 3G/4G | Untethered Wireless Communication | |
| Light/Proximity Sensor | | • Near Head? Ear speaker covered |
| NFC | Proximity | // Nothing yet |
| TouchID | Identity | • User Identity |
| Device Microphone | Dirty Audio In | • Audio Processing |
| External Microphone | Clean Audio In | • Audio Processing |
| Compass | Heading / Direction | • Magnetic Heading<br>• True Heading<br>• Heading Accuracy |
| Clock | Time | • Era<br>• Year<br>• Month<br>• Day<br>• Hour<br>• Weekday<br>• Quarter<br>• Week Of Month<br>• Week Of Year<br>• Year For Week Of Year<br>• Seconds From GMT |
| Lock/Unlock Device | Binary Touch | • Lock Screen |
| Multipeer | Local Community | • Nearby Devices |
| Battery | Life | • Battery Level<br>• Battery State |
| Movement | | • Speed<br>• Course<br>• Heading |
| Visit Sensor | | • Visit Latitude<br>• Visit Longitude<br>• Horizontal Accuracy<br>• Arrival Date<br>• Departure Date |
| Placemark | | • ISO country code<br>• Country<br>• Postal code<br>• Administrative area<br>• Sub administrative area<br>• Locality<br>• Sub locality<br>• Thoroughfare<br>• Sub thoroughfare<br>• Inland water<br>• OceanArea of interest |
| Region | | • Region Latitude<br>• Region Longitude<br>• Region Radius |
| Bluetooth | Proximity | • Major<br>• Minor<br>• Proximity UUID<br>• ProximityAccuracy<br>• RSSI |
| Shake | Shake | • Shake Device |
| Altitude | |•  Relative Altitude<br>• Pressure |
| Attitude | | • Yaw<br>• Pitch<br>• Roll |
| Taptic Engine | Vibrate | • Vibration Sequence |
| Retina Display | | • UIWindow Contents |
| Acceleration | | • Acceleration X<br>• Acceleration Y<br>• Acceleration Z |
| Magnetometer | | • Magnetic Field X<br>• Magnetic Field Y<br>• Magnetic Field Z |
| Gyroscope | | • Rotation Rate X<br>• Rotation Rate Y<br>• Rotation Rate Z |
| Vital Signs | Inferred (Light, Camera)Inferred (Gyro, Accelerometer) | • Heartbeat<br>• Step Counter |
| Solar / Lunar Cycle | Day / Night (Inferred: GPS, Time) | • Local Sunrise<br>• Local Sunset<br>• Local Civil Twilight Start<br>• Local Civil Twilight End<br>• Local Nautical Civil Twilight Start<br>• Local Nautical Civil Twilight End<br>• Local Astronomical Twilight Start<br>• Local Astronomical Twilight End |
| Motion Activity | What is the device/user doing | • Activity Confidence<br>• Stationary<br>• Walking<br>• Running<br>• Automotive<br>• Cycling<br>• Unknown |
| Health Kit | Physical Health | • Body Mass Index<br>• Body Fat Percentage<br>• Height<br>• Body Mass<br>• Lean Body Mass<br>• Step Count<br>• Distance Walking Running<br>• Distance Cycling<br>• Basal Energy Burned<br>• Active Energy Burned<br>• Flights Climbed<br>• Nike Fuel<br>• Heart Rate<br>• Body Temperature<br>• BloodPressure Systolic<br>• BloodPressure Diastolic<br>• Respiratory Rate<br>• Oxygen Saturation<br>• Peripheral Perfusion Index<br>• Blood Glucose<br>• Number Of Times Fallen<br>• Electrodermal Activity<br>• Inhaler Usage<br>• Blood Alcohol Content<br>• Forced Vital Capacity<br>• Forced Expiratory Volume1<br>• Peak Expiratory Flow Rate<br>• Dietary Biotin<br>• Dietary Caffeine<br>• Dietary Calcium<br>• Dietary Carbohydrates<br>• Dietary Chloride<br>• Dietary Cholesterol<br>• Dietary Chromium<br>• Dietary Copper<br>• Dietary Energy Consumed<br>• Dietary Fat Monounsaturated<br>• Dietary Fat Polyunsaturated<br>• Dietary Fat Saturated<br>• Dietary Fat Total<br>• Dietary Fiber<br>• Dietary Folate<br>• Dietary Iodine<br>• Dietary Iron<br>• Dietary Magnesium<br>• Dietary Manganese<br>• Dietary Molybdenum<br>• Dietary Niacin<br>• Dietary Pantothenic Acid<br>• Dietary Phosphorus<br>• Dietary Potassium<br>• Dietary Protein<br>• Dietary Riboflavin<br>• Dietary Selenium<br>• Dietary Sodium<br>• Dietary Sugar<br>• Dietary Thiamin<br>• Dietary Vitamin A<br>• Dietary Vitamin B12<br>• Dietary Vitamin B6<br>• Dietary Vitamin C<br>• Dietary Vitamin D<br>• Dietary Vitamin E<br>• Dietary Vitamin K<br>• Dietary Zinc<br>• Sleep Analysis<br>• Biological Sex<br>• Blood Type<br>• Date Of Birth<br>• Blood Pressure<br>• Food<br>• Workout Type |
