//
//  XHTwitterPaggingViewer.h
//  XHTwitterPagging
//
//  Created by Adil Virani on 6/19/14.
//  Copyright (c) 2014 Adil Virani. All rights reserved.
//


#import <UIKit/UIKit.h>

typedef void(^XHDidChangedPageBlock)(NSInteger currentPage, NSString *title);

@interface XHTwitterPaggingViewer : UIViewController

@property (nonatomic, copy) XHDidChangedPageBlock didChangedPageCompleted;

@property (nonatomic, strong) NSArray *viewControllers;


- (instancetype)initWithLeftViewController:(UIViewController *)leftViewController;


- (instancetype)initWithRightViewController:(UIViewController *)rightViewController;

- (instancetype)initWithLeftViewController:(UIViewController *)leftViewController rightViewController:(UIViewController *)rightViewController;

- (NSInteger)getCurrentPageIndex;


- (void)setCurrentPage:(NSInteger)currentPage animated:(BOOL)animated;

- (void)reloadData;

@end
