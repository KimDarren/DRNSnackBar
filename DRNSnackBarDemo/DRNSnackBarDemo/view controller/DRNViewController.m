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

@end

@implementation DRNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 40.0f, self.view.frame.size.width, 100.0f)];
    [button setTitle:@"Show snack bar" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(showSnackBar) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

#pragma mark - Action

- (void)showSnackBar
{
    [[DRNSnackBar makeText:@"TEST"] show];
}

@end
