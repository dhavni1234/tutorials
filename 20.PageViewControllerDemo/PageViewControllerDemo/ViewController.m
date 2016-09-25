//
//  ViewController.m
//  PageViewControllerDemo
//
//  Created by Bijendra Bhati on 17/03/15.
//  Copyright (c) 2015 Bodacious IT Hub Pvt. Ltd. All rights reserved.
//

#import "ViewController.h"
#import "ContentViewController.h"

@interface ViewController ()
{
    UIPageViewController *pageViewController;
    
    NSMutableArray *chapterTitle;
    NSMutableArray *chapterText;
    int currentIndex;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    chapterTitle = [[NSMutableArray alloc]init];
    chapterText = [[NSMutableArray alloc]init];
    int i ;
    currentIndex = 0;
    for (i=1;i<=10; i++) {
        [chapterTitle addObject:[NSString stringWithFormat:@"Chapter %d",i]];
        [chapterText addObject:[NSString stringWithFormat:@"Sample Text for Chapter %d",i]];
    }
    
    pageViewController = [[UIPageViewController alloc]initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    pageViewController.dataSource = self;
    pageViewController.delegate = self;
    
    NSArray *arr = [[NSArray alloc]initWithObjects:[self viewControllerAtIndex:currentIndex], nil];
    
    [pageViewController setViewControllers:arr direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    
    [self.view addSubview:pageViewController.view];
    
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    
    if(currentIndex == 0)
    {
        NSLog(@"Return Nil for before");
        return nil;
    }
    
    currentIndex--;
    ContentViewController *cVC = [self viewControllerAtIndex:currentIndex];
    return cVC;
    
}
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    
    if(currentIndex >= chapterTitle.count-1)
    {
         NSLog(@"Return Nil for after");
        return nil;
    }
    
    currentIndex++;
    ContentViewController *cVC = [self viewControllerAtIndex:currentIndex];
    return cVC;
    
}

-(ContentViewController*)viewControllerAtIndex:(NSUInteger)index{
    
    UIStoryboard *storyBoard = [self storyboard];
    
    ContentViewController *cVC = (ContentViewController*)[storyBoard instantiateViewControllerWithIdentifier:@"ContentViewController"];
    
    cVC.titleText = [chapterTitle objectAtIndex:index];
    cVC.chapterText = [chapterText objectAtIndex:index];
    
    return cVC;
    
    
}

-(NSUInteger)indexOfViewController:(ContentViewController*)viewController{
    
    return [chapterTitle indexOfObject:viewController.titleText];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
