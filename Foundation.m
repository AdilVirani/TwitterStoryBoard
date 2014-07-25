//
//  XHFoundationCommon.m
//  MessageDisplayExample
//
//  Created by Adil Virani on 6/19/14.
//  Copyright (c) 2014 Adil Virani. All rights reserved.
//


#import "XHFoundationCommon.h"

@implementation XHFoundationCommon

+ (BOOL)isIOS7 {
    return [[[UIDevice currentDevice] systemVersion] integerValue] >= 7.0;
}

+ (CGFloat)getAdapterHeight {
    CGFloat adapterHeight = 0;
    if (![self isIOS7]) {
        adapterHeight = 44;
    }
    return adapterHeight;
}

@end
