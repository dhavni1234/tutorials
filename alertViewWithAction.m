//How to use alert view with action on there buttons.
//  ViewController.m
//
//  Created by TechReviews on 7/29/16.
//  Copyright © 2016 newbie. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>


@interface ViewController ()
{
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    // Alert
    - (void)alert {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"GAME OVER"
                                                                       message:@"Ooops You Missed !"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        //Alert action Replay.
        UIAlertAction *reply =[UIAlertAction actionWithTitle:@"Replay"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction *action){
                                                         [alert dismissViewControllerAnimated:YES completion:nil];
                                                         [self replay];
                                                         
                                                         
                                                     }];
        [alert addAction:reply];
        
        // Alert action Quit.
        UIAlertAction *quit = [UIAlertAction actionWithTitle:@"Quit"
                                                       style:UIAlertActionStyleDestructive
                                                     handler:^(UIAlertAction *action){
                                                         [alert dismissViewControllerAnimated:YES completion:nil];
                                                         
                                                         AudioServicesDisposeSystemSoundID (soundID6); // disposing music.
                                                         
                                                         AudioServicesPlaySystemSound(soundID5);//for quit press and count.
                                                         
                                                         self.lblScore.text = [NSString stringWithFormat:@"%d",score];
                                                         self.lblBonusScore.text = [NSString stringWithFormat:@"%d",bonusScore];
                                                         self.lblTotalScore.text = [NSString stringWithFormat:@"%d",totalScore];
                                                         
                                                         
                                                         [self performSegueWithIdentifier:@"quit" sender:self];// for segue
                                                         //[self quit];
                                                         
                                                     }];
        [alert addAction:quit];
        [self presentViewController:alert animated:YES completion:nil];
        
        
    }
    - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
        QuitViewController *qvc = (QuitViewController*)segue.destinationViewController;
        qvc.scored = self.lblScore.text;
        qvc.bonusScored = self.lblBonusScore.text;
        qvc.totalScored = self.lblTotalScore.text;
    }


}




@end
