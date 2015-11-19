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
        self.backgroundColor = [UIColor colorWithRed:50.0f/255.0f
                                               green:50.0f/255.0f
                                                blue:50/255.0f
                                               alpha:1.0f];
        
        _messageLabel = [[UILabel alloc] init];
        _messageLabel.textColor = [UIColor whiteColor];
        _messageLabel.numberOfLines = 0;
        
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
    CGFloat screenWidth = CGRectGetWidth(screenBounds);
    CGFloat screenHeight = CGRectGetHeight(screenBounds);
    
    CGSize fitSize = CGSizeMake(screenWidth - 19.0f * 2.0f,
                                CGFLOAT_MAX);
    CGSize labelSize = [_messageLabel sizeThatFits:fitSize];
    NSLog(@"%@", NSStringFromCGSize(labelSize));
    
    _messageLabel.frame = CGRectMake(19.0f,
                                     19.0f,
                                     labelSize.width,
                                     labelSize.height);
    CGFloat fitHeight = labelSize.height + 19.0f*2.0f;
    
    self.frame = CGRectMake(0,
                            screenHeight - fitHeight,
                            screenWidth,
                            fitHeight);
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
}

@end
