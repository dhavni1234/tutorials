//
//  DBManager.m
//  Expense
//
//  Created by Ashish Sharma on 03/03/16.
//  Copyright © 2016 Ashish Sharma. All rights reserved.
//
#import "DBManager.h"

static DBManager *sharedInstance = nil;
static sqlite3 *database = nil;
static sqlite3_stmt *statement = nil;

@implementation DBManager

+(DBManager*)getSharedInstance{
    if (!sharedInstance) {
        sharedInstance = [[super allocWithZone:NULL]init];
        [sharedInstance createDB];
    }
    return sharedInstance;
}

-(BOOL)createDB{
    NSString *docsDir;
    NSArray *dirPaths;
    // Get the documents directory
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    docsDir = dirPaths[0];
    
    // Build the path to the database file
    databasePath = [[NSString alloc] initWithString:
                    [docsDir stringByAppendingPathComponent: @"EXPENSEMANAGER.db"]];
    
    NSLog(@"Document Dir is %@",docsDir);
    // NSLog(@"Database path is %@",databasePath);
    
    BOOL isSuccess = YES;
    NSFileManager *filemgr = [NSFileManager defaultManager];
    
    if ([filemgr fileExistsAtPath: databasePath ] == NO)
    {
        // NSLog(@"File Doese Not Exists");
        const char *dbpath = [databasePath UTF8String];
        if (sqlite3_open(dbpath, &database) == SQLITE_OK)
        {
            char *errMsg;
            const char *sql_stmt =
            "create table if not exists income (Id integer primary key AUTOINCREMENT, Income integer, Details text, Date text);"
            "create table if not exists expense (Id integer primary key AUTOINCREMENT, Expense intger, Details text, Date text, Category text);"
            "create table if not exists category (Id integer primary key AUTOINCREMENT, Category text, Details text);";
            
            NSLog(@"%s",sql_stmt);
            if (sqlite3_exec(database, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
            {
                isSuccess = NO;
                //NSLog(@"Failed to create table");
            }
            sqlite3_close(database);
            isSuccess = YES;
        }
        else {
            isSuccess = NO;
            // NSLog(@"Failed to open/create database");
        }
    }
    return isSuccess;
}

-(BOOL)saveData:(NSString*)data
{
    BOOL res = NO;
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        const char *insert_stmt = [data UTF8String];
        const char *errMsg;
        
        sqlite3_prepare_v2(database, insert_stmt,-1, &statement, &errMsg);
        int rescode = sqlite3_step(statement);
        if ( rescode == SQLITE_DONE)
        {
            res= YES;
            // NSLog(@"Data save in sqlite3");
        }
        else {
            res = NO;
            //  NSLog(@"%s",errMsg);
            // NSLog(@"data not save in sqlite3");
        }
        sqlite3_reset(statement);
    }
    sqlite3_close(database);
    return res;
}



-(NSMutableArray *)GetAllNames:(NSString*)RegNo
{
    
    const char *dbpath = [databasePath UTF8String];
    NSMutableArray *resultArray = [[NSMutableArray alloc]init];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        const char *query_stmt = [RegNo UTF8String];
        // NSLog(@"open databse");
        
        if (sqlite3_prepare_v2(database,query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            // NSLog(@"open sqlite3 prepare v2");
            while(sqlite3_step(statement) == SQLITE_ROW)
            {
                // NSLog(@"open sqlite stap");
                NSMutableArray *Array = [[NSMutableArray alloc]init];
                
                for (int i = 0; i<sqlite3_column_count(statement); i++)
                {
                    NSString *str = [NSString stringWithUTF8String:(const char *)sqlite3_column_text(statement, i)];
                    [Array addObject:str];
                }
                [resultArray addObject:Array];
                // NSLog(@"get all data in sqlite3");
            }
        }
        sqlite3_reset(statement);
    }
    sqlite3_close(database);
    return resultArray;
    
}
-(BOOL)deleteByRegsitrationNumber:(NSString*)RegNo{
    
    BOOL res = NO;
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        const char *delete_stmt = [RegNo UTF8String];
        
        sqlite3_prepare_v2(database, delete_stmt, -1, &statement, NULL);
        if (sqlite3_step(statement) == SQLITE_DONE) {
            res = YES;
            // NSLog(@"delete details for database");
        }
        else{
            res = NO;
            // NSLog(@"not delete details for database");
        }
        sqlite3_reset(statement);
    }
    sqlite3_close(database);
    return res;
}
- (NSMutableArray*) findByRegNo:(NSString*)RegNo
{
    
    const char *dbpath = [databasePath UTF8String];
    NSMutableArray *array = nil;
    
    NSString *name = nil;
    
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        const char *query_stmt = [RegNo UTF8String];
        
        if (sqlite3_prepare_v2(database, query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            if(sqlite3_step(statement) == SQLITE_ROW)
            {
                array = [[NSMutableArray alloc]init];
                for (int i = 0 ; i<sqlite3_column_count(statement); i++)
                {
                    const char * name1 =(const char *) sqlite3_column_text(statement, i);
                    name = [[NSString alloc] initWithUTF8String:name1];
                    
                    [array addObject:name];
                    // NSLog(@"find data for database");
                }
            }
            sqlite3_reset(statement);
        }
        sqlite3_close(database);
    }
    
    return array;
}

-(BOOL)updateByRegNo:(NSString *)RegNo{
    BOOL res = NO;
    const char *db = [databasePath UTF8String];
    if (sqlite3_open(db, &database) == SQLITE_OK)
    {
        const char *updateQuerry = [RegNo UTF8String];
        sqlite3_prepare_v2(database, updateQuerry, -1, &statement, NULL);
        if (sqlite3_step(statement) == SQLITE_DONE)
        {
            res = YES;
        }
        else{
            res = NO;
        }
        sqlite3_reset(statement);
    }
    sqlite3_close(database);
    return res;
}

@end

