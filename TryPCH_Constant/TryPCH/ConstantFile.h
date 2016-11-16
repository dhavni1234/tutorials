//http://stackoverflow.com/questions/3339722/how-to-check-ios-version
//  ConstantFile.h
//  TryPCH
//


#ifndef ConstantFile_h
#define ConstantFile_h

#define TXT_EMAIL_PLACEHOLDER @"user@mail.com"
#define RATING 10 // int try
#define TEXT @"Hello" // string
//#define PNGIMAGE(NAME) [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:(NAME) ofType:@"image2.png"]]
#define IMAGELOGO [UIImage imageNamed:@"image3.png"];

// Files to detect which phone is this.
#define IS_IPHONE_4S        [[UIScreen mainScreen] bounds].size.height == 480
#define IS_IPHONE_5         [[UIScreen mainScreen] bounds].size.height == 568
#define IS_IPHONE_6         [[UIScreen mainScreen] bounds].size.height == 667
#define IS_IPHONE_6_PLUS    [[UIScreen mainScreen] bounds].size.height == 736





///*
// *  System Versioning Preprocessor Macros
// */
//
//#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
//#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
//#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
//#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
//#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)
//
///*
// *  Usage
// */
//
//if (SYSTEM_VERSION_LESS_THAN(@"4.0")) {
//    ...
//}
//
//if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"3.1.1")) {
//    ...
//}

#endif /* ConstantFile_h */
