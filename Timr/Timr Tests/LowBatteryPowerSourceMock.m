//
//  LowBatteryPowerSourceMock.m
//  Battery Time Remaining
//
//  Created by Oliver Sigge on 09.09.12.
//  Copyright (c) 2012 Pinky Brains. All rights reserved.
//

#import "LowBatteryPowerSourceMock.h"
#import <IOKit/ps/IOPSKeys.h>

@interface LowBatteryPowerSourceMock ()

@property(nonatomic, strong) NSMutableDictionary *powerSourceDescription;

@end

@implementation LowBatteryPowerSourceMock

- (id)init{
    self = [super init];
    if (self) {
        self.powerSourceDescription = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                       @"Battery Power", [NSString stringWithUTF8String:kIOPSBatteryPowerValue],
                                       @"Battery Power", [NSString stringWithUTF8String:kIOPSPowerSourceStateKey],
                                       nil];
    }
    return self;
}

- (NSNumber*)timeRemaining{
    return [NSNumber numberWithInt:11];
}

- (id)attributeValueForKey:(char const*)key{
    return [self.powerSourceDescription valueForKey:[NSString stringWithUTF8String:key]];
}

- (NSNumber*)current{
    return [NSNumber numberWithInt:300];
}

- (NSNumber*)capacity{
    return [NSNumber numberWithInt:200];
}

- (NSNumber*)cycleCount{
    return [NSNumber numberWithInt:100];
}

- (NSNumber*)watt{
    return [NSNumber numberWithInt:50];
}

- (NSNumber*)temperature{
    return [NSNumber numberWithInt:30];
}

#pragma mark - Helper methods

- (BOOL)isCharging{
    return NO;
}

- (BOOL)isCharged{
    return NO;
}

- (BOOL)isFinishingCharge{
    return NO;
}

- (BOOL)isCalculating{
    return NO;
}

- (BOOL)lowBatteryWarning{
    return YES;
}

- (NSNumber*)remainingChargeInPercent{
    return [NSNumber numberWithDouble:5];
}

@end