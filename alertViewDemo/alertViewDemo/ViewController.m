//
//  ViewController.m
//  alertViewDemo
//
//  Created by TechReviews on 9/27/16.
//  Copyright © 2016 xtremer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
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
                                                     //[self replay];
                                                     
                                                     
                                                 }];
    [alert addAction:reply];
    
    // Alert action Quit.
    UIAlertAction *quit = [UIAlertAction actionWithTitle:@"Quit"
                                                   style:UIAlertActionStyleDestructive
                                                 handler:^(UIAlertAction *action){
                                                     [alert dismissViewControllerAnimated:YES completion:nil];
                                                     
                                                  //   AudioServicesDisposeSystemSoundID (soundID6); // disposing music.
                                                     
//AudioServicesPlaySystemSound(soundID5);//for quit press and count.
                                                     
                                                  //   self.lblScore.text = [NSString stringWithFormat:@"%d",score];
                                                   //  self.lblBonusScore.text = [NSString stringWithFormat:@"%d",bonusScore];
                                                  //   self.lblTotalScore.text = [NSString stringWithFormat:@"%d",totalScore];
                                                     
                                                     
                                                     [self performSegueWithIdentifier:@"quit" sender:self];// for segue
                                                     //[self quit];
                                                     
                                                 }];
    [alert addAction:quit];
    [self presentViewController:alert animated:YES completion:nil];
    
    
}
/*- (void)alert {
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
*/


@end
