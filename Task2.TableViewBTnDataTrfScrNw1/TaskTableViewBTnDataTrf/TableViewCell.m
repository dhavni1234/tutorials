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
- (void)layoutSubviews {
    [super layoutSubviews];
    self.btnGetDetailOutlet.layer.cornerRadius = 7;
    self.btnGetDetailOutlet.layer.masksToBounds = YES;
    self.btnGetDetailOutlet.layer.borderWidth = 1;
}


- (IBAction)btnGetDetail:(id)sender {
    //** This code only displayes the nslog and noting realtion with other code.**
    if (self.btnGetDetailOutlet.tag == 0) {
        NSLog(@"Button Pressed1");
    }
    if (self.btnGetDetailOutlet.tag == 1) {
        NSLog(@"Button Pressed2");
    }
    if (self.btnGetDetailOutlet.tag == 2) {
        NSLog(@"Button Pressed3");
    }
    
}
@end
