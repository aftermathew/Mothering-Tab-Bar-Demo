//
//  Mothering_TabBarDemoAppDelegate.m
//  Mothering_TabBarDemo
//
//  Created by Demi Raven on 11/8/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "Mothering_TabBarDemoAppDelegate.h"

@implementation Mothering_TabBarDemoAppDelegate

@synthesize window;
@synthesize tabBarController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
	[window addSubview:[tabBarController view]];
    [window makeKeyAndVisible];
}


- (void)dealloc {
	self.tabBarController = nil;
    [window release];
    [super dealloc];
}


@end
