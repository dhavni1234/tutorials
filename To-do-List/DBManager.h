//
//  DBManager.h
//  Expense
//
//  Created by Ashish Sharma on 03/03/16.
//  Copyright © 2016 Ashish Sharma. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <sqlite3.h>

@ interface DBManager : NSObject
{
    NSString *databasePath;
}

+(DBManager*)getSharedInstance;

-(BOOL)createDB;

-(BOOL) saveData:(NSString*)data;

-(BOOL)deleteByRegsitrationNumber:(NSString*)RegNo;

- (NSMutableArray*) findByRegNo:(NSString*)RegNo;

-(NSMutableArray *)GetAllNames:(NSString*)RegNo;

-(BOOL)updateByRegNo:(NSString*)RegNo;

@end
