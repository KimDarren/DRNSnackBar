//
//  DRNViewController.m
//  DRNSnackBarDemo
//
//  Created by KimTae jun on 2015. 11. 16..
//  Copyright © 2015년 DarrenLine. All rights reserved.
//

#import "DRNViewController.h"
#import "DRNSnackBar.h"

@interface DRNViewController ()

@property (strong, nonatomic) UIImageView *backgroundImageView;
@property (strong, nonatomic) UIButton *button;

@end

@implementation DRNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    _button = [[UIButton alloc] init];
    _button.clipsToBounds = YES;
    _button.backgroundColor = [UIColor colorWithRed:25.0f/255.0f
                                             green:181.0f/255.0f
                                              blue:254.0f/255.0f
                                             alpha:1.0f];
    _button.layer.cornerRadius = 2.0f;
    [_button setTitle:@"Show snack bar" forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(showSnackBar) forControlEvents:UIControlEventTouchUpInside];
    
    _backgroundImageView = [[UIImageView alloc] init];
    _backgroundImageView.alpha = .75f;
    _backgroundImageView.image = [UIImage imageNamed:@"background"];
    _backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    
    [self.view addSubview:_backgroundImageView];
    [self.view addSubview:_button];
}

#pragma mark - Layout

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    _backgroundImageView.frame = self.view.bounds;
    _button.frame = CGRectMake(self.view.bounds.size.width/4.0f,
                               100.0f,
                               self.view.bounds.size.width/2.0f,
                               50.0f);
}

#pragma mark - Action

- (void)showSnackBar
{
    [[DRNSnackBar makeText:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit."] show];
}

@end
