//
//  ViewController.h
//  AudioAndVideoDemo
//
//  Created by Bijendra Bhati on 02/05/15.
//  Copyright (c) 2015 Bodacious IT Hub Pvt. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import "TableViewController.h"

@interface ViewController : UIViewController <tabelviewcontrollerprotocol>
{
    AVAudioPlayer *audioPlayer;
    MPMoviePlayerViewController *moviePlayer;
    
}
@property NSString *sName;
-(IBAction)playAudio:(id)sender;
-(IBAction)playVideo:(id)sender;
@end