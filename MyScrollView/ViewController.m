//
//  ViewController.m
//  MyScrollView
//
//  Created by Katherine Peterson on 2015-09-07.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *blueView;
@property (strong, nonatomic) IBOutlet UIView *redView;
@property (strong, nonatomic) IBOutlet UIView *greenView;
@property (strong, nonatomic) IBOutlet UIView *yellowView;
@property (strong, nonatomic) IBOutlet MyScrollView *myScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.myScrollView addSubview:self.blueView];
    [self.myScrollView addSubview:self.redView];
    [self.myScrollView addSubview:self.greenView];
    [self.myScrollView addSubview:self.yellowView];
    
    UIPanGestureRecognizer *gestureRecognizer = [[UIPanGestureRecognizer alloc]
                                                 initWithTarget:self.myScrollView action:@selector(viewPanned:)];
    [self.myScrollView addGestureRecognizer:gestureRecognizer];
}

//-(void)viewDidAppear:(BOOL)animated {
//    [self.view setBounds:CGRectMake(0, 100, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
