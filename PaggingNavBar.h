//
//  XHPaggingNavbar.h
//  XHTwitterPagging
//
//  Created by Adil Virani on 6/19/14.
//  Copyright (c) 2014 Adil Virani. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XHPaggingNavbar : UIView


@property (nonatomic, strong) NSArray *titles;

@property (nonatomic, assign) NSInteger currentPage;


@property (nonatomic, assign) CGPoint contentOffset;

- (void)reloadData;

@end
