//
//  PopupAndProgressController.m
//  Mothering_TabBarDemo
//
//  Created by Mathew Chasan on 11/23/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "PopupAndProgressController.h"


@implementation PopupAndProgressController

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

- (void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
  NSLog(@"Pushed button %d", buttonIndex);
}

- (IBAction)popup {
    UIActionSheet *menu = [[UIActionSheet alloc]
                           initWithTitle:@"How do you feel about me?"
                           delegate:self
                           cancelButtonTitle:@"Cancel"
                           destructiveButtonTitle:@"I Love You"
                           otherButtonTitles:@"I Like You", @"Piss off", nil];
  
  [menu showFromTabBar:[[self tabBarController] tabBar]];
}

- (IBAction)progress {
  NSLog(@"progress called");
}

@end
