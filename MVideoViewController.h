//
//  MVideoViewController.h
//  Mothering_TabBarDemo
//
//  Created by Demi Raven on 11/8/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface MVideoViewController : UIViewController <UITextFieldDelegate> {
	
	UITextView * logText;
	MPMoviePlayerController *moviePlayer;
}

@property (retain, nonatomic) IBOutlet UITextView * logText;

- (IBAction) handleTextFieldClick;
- (IBAction) playTheFrickinMovie;
@end
