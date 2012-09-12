//
//  MainMenu.m
//  Battery Time Remaining
//
//  Created by Oliver Sigge on 08.09.12.
//  Copyright (c) 2012 Pinky Brains. All rights reserved.
//

#import "MainMenu.h"
#import "TimrConstants.h"

@interface MainMenu ()

@property (nonatomic, strong) NSMutableDictionary *menuItems;

@end

@implementation MainMenu

@synthesize menuItems;

- (id)init{
    self = [super init];
    if (self) {
        self.menuItems = [NSMutableDictionary dictionaryWithCapacity:9];
        NSArray *menuItemClassNames = [NSArray arrayWithObjects:
                                       @"PercentageMenuItem",
                                       @"PowerSourceMenuItem",
                                       @"LoadCyclesMenuItem",
                                       @"PowerUsageMenuItem",
                                       @"TemperatureMenuItem",
                                        @"SeparatorMenuItem",
                                       @"StartAtLoginMenuItem",
                                       @"NotificationsMenuItem",
                                        @"SeparatorMenuItem",
                                       @"OpenEnergySaverPreferencesMenuItem",
                                        @"SeparatorMenuItem",
                                       @"QuitMenuItem", nil];
        
        for (NSString *menuItemClassName in menuItemClassNames) {
            [self addItem:[self menuItemWithClassName:menuItemClassName]];
        }
    }
    return self;
}

- (NSMenuItem*)menuItemWithClassName:(NSString*)className{
    NSMenuItem *menuItem = [self.menuItems valueForKey:className];
    if(menuItem != nil && !menuItem.isSeparatorItem) return menuItem;
    
    Class menuItemClass = NSClassFromString(className);
    menuItem = [[menuItemClass alloc] init];
    if([menuItem respondsToSelector:@selector(action:)]){
        menuItem.target = menuItem;
        menuItem.action = @selector(action:);
    }
    [self.menuItems setValue:menuItem forKey:className];
    return menuItem;
}

@end
