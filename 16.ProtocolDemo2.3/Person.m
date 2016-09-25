//
//  Person.m
//  ProtocolDemo2
//
//  Created by Bodacious on 03/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import "Person.h"

@implementation Person


-(id)initWithFName:(NSString *)fname LName:(NSString *)lname City:(NSString *)city Number:(NSString *)number{
    
    self.firstName = fname;
    self.lastName = lname;
    self.city =city;
    self.number = number;
    return self;
}
@end
