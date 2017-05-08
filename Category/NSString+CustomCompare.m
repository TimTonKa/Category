//
//  NSString+CustomCompare.m
//  Category
//
//  Created by 1134 on 2017/5/4.
//  Copyright © 2017年 1134. All rights reserved.
//

#import "NSString+CustomCompare.h"

@implementation NSString (CustomCompare)

/*
 * 依照String筆畫做比較
 */
- (NSComparisonResult)strokeCompare:(NSString *)anotherString
{
    NSLocale *strokeSortingLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh@collation=stroke"];
    
    return [self compare:anotherString
                 options:0
                   range:NSMakeRange(0, [self length])
                  locale:strokeSortingLocale];
}

@end
