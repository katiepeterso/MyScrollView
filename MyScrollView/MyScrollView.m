//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Katherine Peterson on 2015-09-07.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (void)viewPanned:(UIPanGestureRecognizer *)sender {
    CGPoint panTranslation = [sender translationInView:self];
    
    self.contentSize = CGSizeMake(300, 750);
    
    CGRect bounds = self.bounds;
    
    // Translate the view's bounds, but do not permit values that would violate contentSize
    CGFloat newBoundsOriginX = bounds.origin.x - panTranslation.x;
    CGFloat minBoundsOriginX = 0.0;
    CGFloat maxBoundsOriginX = self.contentSize.width;
    bounds.origin.x = fmax(minBoundsOriginX, fmin(newBoundsOriginX, maxBoundsOriginX));
    
    CGFloat newBoundsOriginY = bounds.origin.y - panTranslation.y;
    CGFloat minBoundsOriginY = 0.0;
    CGFloat maxBoundsOriginY = self.contentSize.height;
    bounds.origin.y = fmax(minBoundsOriginY, fmin(newBoundsOriginY, maxBoundsOriginY));
    
    self.bounds = bounds;
    [sender setTranslation:CGPointZero inView:self];
    
}

@end
