//
//  BTRStatusNotificator.h
//  Battery Time Remaining
//
//  Created by Oliver Sigge on 09.09.12.
//  Copyright (c) 2012 Pinky Brains. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimrStatusNotificator : NSObject

+ (TimrStatusNotificator *)sharedNotificator;

- (void)notifyWithMessage:(NSString *)message withId:(NSString*)identifier;
- (void)resetNotifications;

@end
