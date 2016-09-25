//
//  DetailsViewController.m
//  ProtocolDemo2
//
//  Created by Bodacious on 03/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import "DetailsViewController.h"
#import "EditViewController.h"

@interface DetailsViewController ()

@property (weak, nonatomic) IBOutlet UILabel *fullNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *cityName;

@property (weak, nonatomic) IBOutlet UILabel *Number;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.fullNameLabel.text = [NSString stringWithFormat:@"%@ %@",self.p.firstName,self.p.lastName];
    self.cityName.text = [NSString stringWithFormat:@"%@",self.p.city];
    self.Number.text = [NSString stringWithFormat:@"%@",self.p.number];
    self.editDelegate = (UIViewController*)self.b;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    EditViewController *EVC = (EditViewController*)segue.destinationViewController;
    EVC.p = self.p;
    EVC.index = self.index;
    EVC.delegate = self;
}

-(void)editPerson:(Person *)p atindex:(int)a{
    
    [self.b savePerson:p atIndex:a];
}

@end
