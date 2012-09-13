//
//  BTRStatusNotificator.h
//  Battery Time Remaining
//
//  Created by Oliver Sigge on 09.09.12.
//  Copyright (c) 2012 Pinky Brains. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PowerSource;

@interface TimrStatusNotificator : NSObject

+ (TimrStatusNotificator *)sharedNotificator;

- (void)notifyWithPowerSource:(PowerSource*)powerSource;
- (void)notifyWithMessage:(NSString *)message withId:(NSString*)identifier;
- (void)resetNotifications;

@end
