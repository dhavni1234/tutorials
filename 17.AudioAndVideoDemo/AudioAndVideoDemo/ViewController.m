//
//  ViewController.m
//  AudioAndVideoDemo
//
//  Created by Bijendra Bhati on 02/05/15.
//  Copyright (c) 2015 Bodacious IT Hub Pvt. Ltd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)VolumeChanged:(id)sender {
    
    if(audioPlayer!=NULL)
        [audioPlayer setVolume:self.slider.value];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)playAudio:(id)sender{
    NSString *path = [[NSBundle mainBundle]
                      pathForResource:@"Tune" ofType:@"mp3"];
    audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:
                   [NSURL fileURLWithPath:path] error:NULL];
    [audioPlayer play];
}
-(IBAction)playVideo:(id)sender{
    NSString *path = [[NSBundle mainBundle]pathForResource:
                      @"a" ofType:@"mp4"];
    NSLog(@"Path is %@",path);
    moviePlayer = [[MPMoviePlayerViewController
                    alloc]initWithContentURL:[NSURL fileURLWithPath:path]];
    [self presentMoviePlayerViewControllerAnimated:moviePlayer];
}
- (IBAction)btnPause:(id)sender {
    if(audioPlayer!=NULL)
       [audioPlayer pause];
}
- (IBAction)btnStop:(id)sender {
    if(audioPlayer!=NULL)
        [audioPlayer stop];
}
- (IBAction)btnResume:(id)sender {
    if(audioPlayer!=NULL)
        [audioPlayer play];
}

@end
