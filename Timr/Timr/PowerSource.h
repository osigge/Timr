//
//  PowerSource.h
//  Battery Time Remaining
//
//  Created by Oliver Sigge on 08.09.12.
//  Copyright (c) 2012 Pinky Brains. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IOKit/ps/IOPSKeys.h>

@interface PowerSource : NSObject

@property(nonatomic, readonly, strong) NSNumber *remainingHours;
@property(nonatomic, readonly, strong) NSNumber *remainingMinutes;

@property(nonatomic, readonly, strong) NSNumber *current;
@property(nonatomic, readonly, strong) NSNumber *capacity;
@property(nonatomic, readonly, strong) NSNumber *cycleCount;
@property(nonatomic, readonly, strong) NSNumber *watt;
@property(nonatomic, readonly, strong) NSNumber *temperature;
@property(nonatomic, readonly, strong) NSNumber *remainingChargeInPercent;
@property(nonatomic, readonly, copy) NSString *source;

@property(nonatomic, readonly) BOOL charged;
@property(nonatomic, readonly) BOOL charging;
@property(nonatomic, readonly) BOOL calculating;
@property(nonatomic, readonly) BOOL finishingCharge;
@property(nonatomic, readonly) BOOL lowBatteryWarning;
@property(nonatomic, readonly) BOOL batteryPower;

- (NSString*)stringWithHumanReadableTimeRemaining;

@end
