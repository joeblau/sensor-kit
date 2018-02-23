//
//  BluetoothModalityTestHelper.m
//  SensorKit
//
//  Created by Joseph Blau on 1/16/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

#import "BluetoothModalityTestHelper.h"
#import <CoreBluetooth/CoreBluetooth.h>

@implementation BluetoothModalityTestHelper

- (void)callDelegatesWith:(BluetoothModality *)mockBluetoothModality {
    CBCentralManager *mockCentralManager = [CBCentralManager new];
    NSDictionary<NSString *, id> *mockAdvertisementData = [NSDictionary new];
    NSNumber *mockRSSI = [NSNumber numberWithInt:100];
    
    [mockBluetoothModality centralManager:mockCentralManager didDiscoverPeripheral:(CBPeripheral *)[NSObject new] advertisementData:mockAdvertisementData RSSI:mockRSSI];
    [mockBluetoothModality centralManager:mockCentralManager didConnectPeripheral:(CBPeripheral *)[NSObject new]];
    [mockBluetoothModality centralManager:mockCentralManager didDisconnectPeripheral:(CBPeripheral *)[NSObject new] error:nil];
}

@end
