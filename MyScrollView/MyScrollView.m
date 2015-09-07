//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Katherine Peterson on 2015-09-07.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        UIPanGestureRecognizer *gestureRecognizer = [[UIPanGestureRecognizer alloc]
                                                     initWithTarget:self action:@selector(viewPanned:)];
        [self addGestureRecognizer:gestureRecognizer];
    }
    return self;
}

- (void)viewPanned:(UIPanGestureRecognizer *)sender {
    CGPoint panTranslation = [sender translationInView:self];
    if (panTranslation.x<=300) {
        if (panTranslation.y<=750) {
            [self setBounds:CGRectMake(-panTranslation.x, -panTranslation.y, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
        }
        else {
            [self setBounds:CGRectMake(-panTranslation.x, -750, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
        }
    }
    else if (panTranslation.y <= 750) {
        [self setBounds:CGRectMake(-300, -panTranslation.y, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
    }
    else {
        [self setBounds:CGRectMake(-300, -750, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
    }
    
}

@end
