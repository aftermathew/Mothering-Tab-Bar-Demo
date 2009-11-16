//
//  Mothering_TabBarDemoAppDelegate.m
//  Mothering_TabBarDemo
//
//  Created by Demi Raven on 11/8/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "Mothering_TabBarDemoAppDelegate.h"
#import "MVideoViewController.h"

@implementation Mothering_TabBarDemoAppDelegate

@synthesize window;
@synthesize tabBarController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

  // Override point for customization after application launch
  [window addSubview:[tabBarController view]];
  [window makeKeyAndVisible];

  
  // do setup on view controllers
  // iterate through view controllers looking for movie player controllers
  // setup their urls
  NSArray *viewControllers = [tabBarController viewControllers];
  NSEnumerator *enumerator = [viewControllers objectEnumerator];
  id aView;
  while (aView = [enumerator nextObject]) {
    if([aView isMemberOfClass:[MVideoViewController class]]){
      MVideoViewController *vidController = (MVideoViewController*)aView;
      if([[[vidController tabBarItem] title] compare:@"Online Video"] == NSOrderedSame)
        [vidController setMovieUrl:[MVideoViewController onlineMovie]];
      else
        [vidController setMovieUrl:[MVideoViewController localMovie]];
    }
  }
}


- (void)dealloc {
  self.tabBarController = nil;
  [window release];
  [super dealloc];
}


@end
