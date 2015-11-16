//    DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
//    Version 2, December 2004
//
//    Copyright (C) 2013-2015 KIM TAE JUN <korean.darren@gmail.com>
//
//    Everyone is permitted to copy and distribute verbatim or modified
//    copies of this license document, and changing it is allowed as long
//    as the name is changed.
//
//    DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
//    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
//
//    0. You just DO WHAT THE FUCK YOU WANT TO.

#import "DRNSnackBarView.h"

// Library
#import <Masonry/Masonry.h>

@interface DRNSnackBarView ()

@end

@implementation DRNSnackBarView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor darkGrayColor];
        
        _messageLabel = [[UILabel alloc] init];
        _messageLabel.textColor = [UIColor whiteColor];
        
        _dismissButton = [[UIButton alloc] init];
        [_dismissButton setTitle:@"Dismiss" forState:UIControlStateNormal];
        [_dismissButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        
        [self addSubview:_messageLabel];
        [self addSubview:_dismissButton];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    self.frame = CGRectMake(0, CGRectGetHeight(screenBounds) - 100.0f, CGRectGetWidth(screenBounds), 100.0f);
    _messageLabel.frame = self.bounds;
}

@end
