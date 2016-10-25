//
//  DetailViewController.h
//  Json
//
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "AFNetworking.h"


@interface DetailViewController : UIViewController
//TextFields Outlet Collection
@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *txtFields;

//TextFields outlets
@property (weak, nonatomic) IBOutlet UITextField *txtFieldName;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldUserType;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldLicense;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldAge;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldSex;


@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *btnUpdateProfileOutlet;
- (IBAction)btnUpdateProfile:(id)sender;



@end
