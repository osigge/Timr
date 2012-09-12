//
//  AppDelegate.m
//  Timr
//
//  Created by Oliver Sigge on 08.09.12.
//  Copyright (c) 2012 Pinky Brains. All rights reserved.
//

#import "AppDelegate.h"
#import "Settings.h"
#import "MainMenuViewController.h"

@interface AppDelegate ()

@property (nonatomic, strong) MainMenuViewController *batteryTimeRemainingViewController;

@end

@implementation AppDelegate

@synthesize batteryTimeRemainingViewController;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification{
    self.batteryTimeRemainingViewController = [[MainMenuViewController alloc] init];
}

@end