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

@interface ViewController : UIViewController
{
    AVAudioPlayer *audioPlayer;
    MPMoviePlayerViewController *moviePlayer;
    
}
-(IBAction)playAudio:(id)sender;
-(IBAction)playVideo:(id)sender;
@end