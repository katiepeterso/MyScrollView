//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Katherine Peterson on 2015-09-07.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic)CGSize contentSize;

- (void)viewPanned:(UIPanGestureRecognizer *)sender;

@end
