//
//  ViewController.m
//  Category
//
//  Created by 1134 on 2017/5/4.
//  Copyright © 2017年 1134. All rights reserved.
//

#import "ViewController.h"

#import "NSObject+SmallTalkish.h"
#import "NSString+CustomCompare.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Category test
    [self printNl];
    
    //Category test
    NSString *str= @"123";
    [str printNl];
    
    //Category test and compare string
    NSString *str2 = @"一一一一";
    NSString *str3 = @"一一一二";
    NSComparisonResult comparisonResult = [str2 strokeCompare:str3];
    switch (comparisonResult) {
        case NSOrderedAscending:
            NSLog(@"Str2 < Str3");
            break;
        case NSOrderedDescending:
            NSLog(@"Str2 > Str3");
            break;
        case NSOrderedSame:
            NSLog(@"Str2 = Str3");
            break;
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
