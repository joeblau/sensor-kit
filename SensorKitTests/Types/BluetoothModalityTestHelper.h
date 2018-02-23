//
//  BluetoothModalityTestHelper.h
//  SensorKit
//
//  Created by Joseph Blau on 1/16/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SensorKit/SensorKit-Swift.h>

NS_ASSUME_NONNULL_BEGIN

@interface BluetoothModalityTestHelper : NSObject

- (void)callDelegatesWith:(BluetoothModality *)mockBluetoothModality;

@end

NS_ASSUME_NONNULL_END
