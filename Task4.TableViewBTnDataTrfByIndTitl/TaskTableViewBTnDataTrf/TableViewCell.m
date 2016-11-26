//
//  TableViewCell.m
//  TaskTableViewBTnDataTrf
//

//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

// In tableViewCell it works as view did load.
- (void)layoutSubviews {
    [super layoutSubviews];
    self.btnGetDetailOutlet.layer.cornerRadius = 7;
    self.btnGetDetailOutlet.layer.masksToBounds = YES;
    self.btnGetDetailOutlet.layer.borderWidth = 1;
//    if (self.btnGetDetailOutlet.tag == 0) {
//        [self.btnGetDetailOutlet setTitle:@"User" forState:UIControlStateNormal];
//    } else if (self.btnGetDetailOutlet.tag == 1){
//        [self.btnGetDetailOutlet setTitle:@"Login" forState:UIControlStateNormal];
//    } else if (self.btnGetDetailOutlet.tag == 2){
//        [self.btnGetDetailOutlet setTitle:@"Password" forState:UIControlStateNormal];
//    }
    
}


- (IBAction)btnGetDetail:(id)sender {
    if ([self.btnGetDetailOutlet.titleLabel.text isEqualToString:@"User"]) {
        NSLog(@"Button Pressed1");
        
    }
    if ([self.btnGetDetailOutlet.titleLabel.text isEqualToString:@"Login"]) {
        NSLog(@"Button Pressed2");
    }
    if ([self.btnGetDetailOutlet.titleLabel.text isEqualToString:@"Password"]) {
        NSLog(@"Button Pressed3");
    }
    
}
@end
